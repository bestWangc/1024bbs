import sys
import time
import codecs
import json
import pymysql
import traceback
from bs4 import BeautifulSoup as bs
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.chrome.options import Options

def die():
    sys.exit()

try: 
    fid = sys.argv[1]
except: 
    fid = 3
fid = str(fid)

db = pymysql.connect("localhost","root","root","pure");

cursor = db.cursor()

chrome_options = Options()
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--disable-dev-shm-usage')
chrome_options.add_argument('--headless')
chrome_options.add_argument('blink-settings=imagesEnabled=false')
chrome_options.add_argument('--disable-gpu')
browser = webdriver.Chrome(chrome_options=chrome_options)#声明驱动对象
try:
    right_url = 'http://%77%77%31%2E%64%7A%78%61%2E%6D%65/bbs.php'
    browser.get(right_url)#发送get请求
    tmp_url = browser.current_url +'thread.php?fid=' + fid
    time.sleep(2)
    browser.get(tmp_url)
    # List = browser.find_elements_by_xpath("//h3/a[@target='_blank']")
    List = browser.find_elements_by_xpath("//h3/a")
    wait = WebDriverWait(browser,20)#等待元素加载出来

    current_time = time.strftime('%m.%d', time.localtime())
    for x in List:
        title_text = x.text
        res = title_text.find(current_time)

        if res >= 0:
            #查询是否存在该title
            cursor.execute("SELECT title FROM pp_article")
            title_result = cursor.fetchall()     # fetchall() 获取所有记录
            is_exist = False
            for i in title_result:
                if title_text in i:
                    is_exist = True
                    break

            if is_exist: continue

            time.sleep(1)
            browser.get(x.get_attribute('href'))
            wait = WebDriverWait(browser,20)
            data = browser.find_element_by_id('read_tpc')
            source_html = browser.page_source
            soup = bs(source_html,'lxml')
            current_cont = soup.find('div', id='read_tpc')

            alink = current_cont.findAll('a')
            url_arr = []
            count = 0
            for y in alink:
                href_str = y.get('href')
                if href_str.find('torrent') >= 0:
                    browser.get(href_str)
                    wait = WebDriverWait(browser,20)
                    browser.find_element_by_class_name('dlboxbg')
                    time.sleep(1)
                    torrent_html = bs(browser.page_source,'lxml')
                    parent_box = torrent_html.find('div','dlboxbg')
                    url_arr.append(parent_box.find('a').get('href'))
                    y['href'] = 'javascript:;'
                    y['class'] = 'address'
                    y['data-val'] = count
                    y.string = '点击获取'
                    count += 1
                else:
                    y['href'] = 'javascript:;'

            current_cont = str(current_cont)
            url_arr = json.dumps(url_arr,ensure_ascii=False)

            try:
                all_time = time.strftime('%Y-%m-%d %H:%M:%S',time.localtime())
                sql = 'INSERT INTO pp_article (user_id,title,content,block_id,create_time) VALUES(1,%s,%s,%s,%s)'
                val = (title_text,current_cont,fid,all_time)
                cursor.execute(sql, val)
                last_insert_id = cursor.lastrowid
                if last_insert_id:
                    sql = 'INSERT INTO pp_torrent (article_id,content,create_time) VALUES(%s,%s,%s)'
                    val = (last_insert_id,url_arr,all_time)
                    cursor.execute(sql, val)

                # 提交到数据库执行
                db.commit()
            except:
                traceback.print_exc()
                # 如果发生错误则回滚
                db.rollback()
            finally:
                #最终关闭数据库连接
                db.close()

except:
    traceback.print_exc()
finally:
    browser.close()#关闭谷歌浏览器
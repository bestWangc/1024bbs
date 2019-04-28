<?php
namespace app\index\controller;

use shpay\Shpay;
use think\Db;
use think\facade\Request;
use think\facade\Session;

class Order extends Base
{
    public function createOrder(Request $request)
    {
        $num = $request::post('num/d');
        $way = $request::post('way/d');
        $type = $request::post('type/d');
        $queryPwd = $request::post('queryPwd');
        if(empty($num) || is_null($way) || empty($type) || empty($queryPwd)){
            return jsonRes(1,'参数不够');
        }
        $checkQueryPwd = Db::name('kalman')
            ->where('query_pwd')
            ->count('id');
        if($checkQueryPwd){
            return jsonRes(1,'查询密码已存在，请重新输入');
        }
        $price = Db::name('price')->where('id',$type)->value('price');
        $time = Db::name('price')->where('id',$type)->value('time');
        $money = $num*$price;

        //流水编号
        $orderNum = date('Ymd').substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
        $data = [
            'user_id' => Session::get('u_id'),
            'amount' => (int)$money,
            'order_no' => $orderNum,
            'status' => 2,
            'created_date' => time(),
            'way' => $way
        ];

        $result = [];
        Db::startTrans();
        try {
            $res = Db::name('order')
                ->insert($data);
            if($res){
                //生成卡密码
                $kalman = getKalman();
                $data = [
                    'kalman' => $kalman,
                    'day' => $time,
                    'status' => 0,
                    'query_pwd' => $queryPwd,
                    'order_no' => $orderNum,
                    'create_time' => time()
                ];
                $res = Db::name('kalman')->insert($data);
                if($res){
                    $shpay = new Shpay();
                    if($way){
                        $way = 'ALP'; //支付宝
                    }else{
                        $way = 'WXP'; //微信
                    }

                    $resUrl = $shpay->createOrder($orderNum,$money,$way);
                    if(!empty($resUrl)){
                        $resUrl = json_decode($resUrl);
                        if(property_exists($resUrl,'qrcode') && !empty($resUrl->qrcode)){
                            $result = ['url' => $resUrl->qrcode,'way' => $way];
                        }
                    }
                }

                if(empty($result)){
                    throw new Exception('失败,请重试');
                }
            }else{
                throw new Exception('记录生成失败');
            }
            // 提交事务
            Db::commit();
            return jsonRes(0,'success',$result);
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return jsonRes(1,$e->getMessage());
        }

    }
}

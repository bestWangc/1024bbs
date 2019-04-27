<?php
namespace app\index\controller;

use think\Db;
use think\facade\Request;
use think\facade\Session;

class Torrent extends Base
{
    public function detail(Request $request)
    {
        $articleId = $request::param('id');
        $type = $request::param('type');
        if(is_null($type)) abort(404,'页面异常');

        $isLogin = $this->checkLogin();
        if(!$isLogin) return jsonRes(1,'未登录');

        $vipDayLine = Session::get('user_vip');
        if($vipDayLine == 0) return jsonRes(102,'vip 时间已过，请重新获取卡密');

        $info = Db::name('torrent')
            ->where('article_id',$articleId)
            ->value('content');
        $info = str_replace('[','',$info);
        $info = str_replace(']','',$info);
        $info = str_replace('"','',$info);
        $info = explode(',',$info);
        foreach ($info as &$item) {
            $item = trim($item);
        }

        $url = $info[$type] ?? '';
        return  jsonRes(0,'success',$url);
    }
}

<?php
namespace app\index\controller;

use think\Db;
use think\facade\Request;
use think\facade\Session;

class Torrent extends Base
{
    public function detail(Request $request)
    {
        $articleId = $request::post('id');
        $type = $request::post('type');
        $kalman = $request::post('text');
        if(is_null($type)) abort(404,'页面异常');

        $isLogin = $this->checkLogin(); //判断是否登录
        $checkKalman = Kalman::check($kalman);

        if(!$isLogin && !$checkKalman){
            return jsonRes(1,'未登录或者卡密不可用');
        }

        if(empty($kalman)){
            $userId = Session::get('u_id');
            $vipDayLine = Db::name('users')->where('id',$userId)->value('vip_dayline');
            if($vipDayLine > 0 && $vipDayLine < time()){
                return jsonRes(102,'vip 时间已过，请重新获取卡密');
            }
        }

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

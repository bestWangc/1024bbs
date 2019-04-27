<?php
namespace app\index\controller;

use think\Db;
use think\facade\Request;

class Kalman extends Base
{
    public function index()
    {
        return $this->fetch();
    }

    public function checkKalman(Request $request)
    {
        $text = $request::param('text');
        if(empty($text)) return jsonRes(1,'卡密不能为空');

        $result = self::check($text);

        if($result){
            return jsonRes(0,'卡密可以使用');
        }
        return jsonRes(1,'卡密无法使用');
    }

    public static function check($text)
    {
        $info = Db::name('kalman')
            ->where('kalman',$text)
            ->where('status',1)
            ->value('day');
        if((int)$info > 0){
            return true;
        }
        return false;
    }
}

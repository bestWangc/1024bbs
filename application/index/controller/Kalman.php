<?php
namespace app\index\controller;

use think\Db;
use think\facade\Request;

class Kalman extends Base
{
    public function checkKalman(Request $request)
    {
        $text = $request::param('text');
        if(empty($text)) return jsonRes(1,'卡密不能为空');


        return true;
    }
}

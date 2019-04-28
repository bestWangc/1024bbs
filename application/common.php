<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
/**
 * josn 返回函数
 * @param int $code
 * @param $msg
 * @param array $data
 * @return \think\response\Json
 */
function jsonRes($code, $msg, $data = []){
    $data = [
        'code' => $code,
        'msg' => $msg,
        'data' => $data
    ];
    return json($data);
}

function getKalman()
{
    $numLen = $pwdLen = 16;
    $sNumArr = range(0,20);
    $sPwdArr = array_merge($sNumArr,range('A','Z'));

    $tempNumStr = [];
    for($i=0; $i< $numLen; $i++){
        $tempNumStr[] = array_rand($sNumArr);
    }
    $tempPwdStr = [];
    for($i=0; $i< $pwdLen; $i++){
        $tempPwdStr[] = $sPwdArr[array_rand($sPwdArr)];
    }
    $cards = implode('',$tempNumStr) .implode('',$tempPwdStr);

    $cards = md5($cards);
    return $cards;
}
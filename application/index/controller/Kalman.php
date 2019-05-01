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
        if(!empty($info)){
            if($info > 0 ){
                if($info > time()){
                    return true;
                }
            }else{
                return true;
            }
        }
        return false;
    }

    public function getPrice(Request $request)
    {
        $type = $request::post('type/d');
        $num = $request::post('num/d');
        if(empty($type) || empty($num)){
            return jsonRes(1,'参数不足');
        }
        $price = Db::name('price')
            ->where('id',$type)
            ->value('price');
        $total = $price * $num;
        return jsonRes(0,'success',$total);
    }

    public function getKalmanByQuery(Request $request)
    {
        $query = $request::post('query');
        if(empty($query)){
            return jsonRes(1,'查询密码不能为空');
        }
        $info = Db::name('kalman')
            ->where('query_pwd',$query)
            ->where('status',1)
            ->value('kalman');
        if(empty($info)){
            return jsonRes(1,'未找到卡密，请稍候再试');
        }
        return jsonRes(0,'success',$info);
    }

    public function addKalForUser(Request $request)
    {
        $account = $request::post('account');
        $kalman = $request::post('kal_str');
        if(empty($account)){
            return jsonRes(1,'帐号不能为空');
        }
        if(empty($kalman)){
            return jsonRes(1,'卡密不能为空');
        }

        $userId = Db::name('users')
            ->where('account',$account)
            ->value('id');
        if(empty($userId)){
            return jsonRes(1,'帐号不存在');
        }

        $checkText = self::check($kalman);
        if(!$checkText){
            return jsonRes(1,'卡密无法使用，请重新购买');
        }

        $day = Db::name('kalman')
            ->where('kalman',$kalman)
            ->value('day');
        $data = [
            'vip_dayline' => $day
        ];
        Db::startTrans();
        try {
            $res = Db::name('users')->where('id',$userId)->update($data);
            if($res){
                $res = Db::name('kalman')
                    ->where('kalman',$kalman)
                    ->where('status',1)
                    ->update(['status' => 0]);
                if(!$res){
                    throw new Exception('失败,请重试');
                }
            }else{
                throw new Exception('失败,请重试');
            }
            // 提交事务
            Db::commit();
            return jsonRes(0,'success');
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            return jsonRes(1,'fail');
        }

    }
}

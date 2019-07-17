<?php
namespace app\index\controller;

use think\Db;
use think\facade\Log;
use think\facade\Request;
use think\facade\Session;

class Login extends Base
{
    public function login()
    {
        return $this->fetch();
    }

    public function doLogin(Request $request)
    {
        $userName = $request::post('username', "");
        $userPwd = $request::post('userpwd', "");

        if(empty($userName) || empty($userPwd)){
            return jsonRes(1,'用户名或者密码不能为空');
        }
        $userArr = Db::name('users')
            ->where('account',$userName)
            ->field('id,account,password,vip_dayline')
            ->find();

        if(empty($userArr['id'])){
            return jsonRes(1,'用户名不存在');
        }

        if($userPwd = md5($userPwd.'10umjtiH24') == $userArr['password']){
            Session::set('u_id',$userArr['id']);
            Session::set('user_account',$userArr['account']);
            Session::set('user_vip',$userArr['vip_dayline']);

            return jsonRes(0,'登录成功');
        }else{
            return jsonRes(1,'登录失败');
        }
    }

    public function register()
    {
        return $this->fetch();
    }

    public function doRegister(Request $request)
    {
        $userName = $request::param('username', '');
        $userPwd = $request::param('userpwd', '');
        $email = $request::param('useremail', '');
        $kalman = $request::param('kalman', '');

        if(empty($userName) || empty($userPwd) || empty($email)){
            return jsonRes(1,'信息填写不全，请重试');
        }
        // if(empty($kalman)) return jsonRes(1,'卡密不能为空');

        $oldUserInfo = Db::name('users')
            ->where('account',$userName)
            ->count('id');

        if(!!$oldUserInfo) return jsonRes(1,'帐号已存在，请重新填写');

        $checkKalman = strtotime("+30 day");
        if(!empty($kalman)){
            $checkKalman = Db::name('kalman')
                ->where('kalman',$kalman)
                ->where('status',1)
                ->value('day');
            if(empty($checkKalman)) return jsonRes(1,'卡密不存在或者已过期');
        }

        $data = [
            'account' => $userName,
            'password' => md5($userPwd.'10umjtiH24'),
            'email' => $email,
            'vip_dayline' => $checkKalman,
            'create_time' => time()
        ];
        Db::startTrans();
        try {
            Db::name('users')->insert($data);
            Db::name('kalman')
                ->where('kalman',$kalman)
                ->where('status',1)
                ->update(['status' => 0]);
            // 提交事务
            Db::commit();
            return jsonRes(0,'注册成功');
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            Log::error($e->getMessage());
            return jsonRes(1,'注册失败，请重试');
        }
    }
}

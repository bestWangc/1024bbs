<?php
namespace app\index\controller;

use think\Db;
use think\facade\Request;
use think\facade\Session;

class Index extends Base
{
    public function index()
    {
        $blockInfo = Block::getAllField();
        $blockInfo = array_chunk($blockInfo,4);
        $isLogin = false;
        if(Session::get('u_id')){
            $isLogin = true;
        }
        $lastUser = Db::name('users')->order('id desc')->value('account');
        $this->assign([
            'blockInfo' => $blockInfo,
            'isLogin' => $isLogin,
            'lastUser' => $lastUser
        ]);
        return $this->fetch();
    }

    public function listView(Request $request)
    {
        $type = $request::param('type',1);
        $title = Block::getFieldByID($type,'title');
        $this->assign([
            'title' => $title,
            'type' => $type
        ]);
        return $this->fetch();
    }
}

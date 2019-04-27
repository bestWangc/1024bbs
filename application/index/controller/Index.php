<?php
namespace app\index\controller;

use think\Db;
use think\facade\Request;

class Index extends Base
{
    public function index()
    {
        $blockInfo = Block::getAllField();
        $blockInfo = array_chunk($blockInfo,4);
        $this->assign('blockInfo',$blockInfo);
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

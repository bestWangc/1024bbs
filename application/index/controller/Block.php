<?php
namespace app\index\controller;

use think\Db;

class Block extends Base
{
    /**
     * @param $id
     * @param $field
     * @return mixed
     */
    public static function getFieldByID($id,$field)
    {
        $info = Db::name('block')
            ->where('id',$id)
            ->value($field);
        return $info;
    }

    /**
     * @return array|\PDOStatement|string|\think\Collection
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public static function getAllField()
    {
        $info = Db::name('block')->select();
        return $info;
    }
}

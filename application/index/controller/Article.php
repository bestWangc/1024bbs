<?php
namespace app\index\controller;

use think\Db;
use think\Exception;
use think\facade\Request;

class Article extends Base
{
    public function index(Request $request)
    {
        $id = $request::param('id');
        $title = $request::param('title');
        if(empty($id)) abort(404,'页面异常');
        return $this->fetch();
    }

    /**
     * @param Request $request
     * @return mixed
     */
    public static function getArticle(Request $request)
    {
        $type = $request::param('type',3);
        $page = $request::param('page',1);
        $limit = $request::param('limit',30);
        $list = Db::name('article')
            ->field('id,title,create_time')
            ->where('block_id',$type)
            ->paginate($limit,false,[
                'page' => $page
            ]);
        $total = $list->total();
        $list = $list->all();
        $info = [
            "rows" => $list, //存放的是后台返回的数据
            "total" => $total //存放的是总的数据条数
        ];

        return json($info);
    }
}

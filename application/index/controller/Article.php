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
        $total = 70;
        $data = [
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
            [
                "title"=>'最新國產の精品合集ⓐ[04.13]',
                "author"=>"admin",
                "create_time"=>"2019-04-13 21:20",
                "id" =>1
            ],
        ];
        $info = [
            "rows" => $data, //存放的是后台返回的数据
            "total" => $total //存放的是总的数据条数
        ];

        return json($info);
    }
}

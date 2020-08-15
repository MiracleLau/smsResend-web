<?php
namespace app\controller;

use app\BaseController;
use app\model\Sms;
class Index extends BaseController
{
    public function index()
    {
        return "Ok";
    }

    public function uploadMsg()
    {
        if(request()->isPost()){
            $data = request()->post();
            if(isset($data['pwd']) && $data["pwd"]== config('app.api_pwd')){
                if(isset($data["test"])){
                    return get_result(0, "保存成功");
                } else {
                    unset($data["pwd"]);
                    $md5 = md5(json_encode($data));
                    $count = Sms::where("md5",$md5)->count();
                    if($count == 0) {
                        $sms = new Sms;
                        $data["md5"] = $md5;
                        $sms->save($data);
                        return get_result(0, "保存成功");
                    } else {
                        return get_result(1, "短信已存在");
                    }
                }
                
            } else {
                return get_result(1, "密码不正确");
            }
            
        } else {
            return get_result(1, "请求方式不正确");
        }
    }
}

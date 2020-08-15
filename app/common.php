<?php
// 应用公共文件

//生成统一返回数组
function get_result($code,$msg,$data=""){
    return json([
        "code"=>$code,
        "msg"=>$msg,
        "data"=>$data
    ]);
}
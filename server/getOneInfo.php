<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/9/1
 * Time: 13:39
 */
//本页面用于编辑页面加载信息时使用，根据id获取单独的信息
require_once 'config.php';
//如果能连接成功则打印成功，否则打印失败
if ($conn){
    $newsId = $_GET['newsId'];
//    echo('连接成功');
    $sql = "SELECT * FROM `choiceness_newslists` WHERE  `choiceness_newslists`.`id` = '{$newsId}'";
    mysqli_query($conn,"SET NAMES utf8");
    $result = mysqli_query($conn,$sql);
    //创建数组
    $sendDataOne = array();
    //数据输入数组
    while ($row = mysqli_fetch_assoc($result)){
        array_push($sendDataOne,array(
            'id'=>$row['id'],
            'tab'=>$row['tab'],
            'title' =>$row['title'],
            'type'=>$row['type'],
            'hot' => $row['hot'],
            'guessLike' => $row['guessLike'],
            'time' => $row['time'],
            'date' => $row['date'],
            'img01Src' => $row['img01Src'],
            'img02Src' => $row['img02Src'],
            'img03Src' => $row['img03Src'],
            'url' => $row['url']
        ));
    }
    //发送给前端
    echo json_encode($sendDataOne);
}else{
    echo('连接失败');
}
mysqli_close($conn);
?>

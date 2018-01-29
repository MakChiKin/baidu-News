<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/8/29
 * Time: 15:57
 */

require_once 'config.php';
//如果能连接成功则打印成功，否则打印失败
if ($conn){
//    echo('连接成功');
    $sql=null;
    $result=null;
    $senddata = null;
    if($_GET['newsTab']=='精选'){

        $sql = 'SELECT * FROM choiceness_newslists';
    }
    if($_GET['newsTab']=='百家'){
        $sql = 'SELECT * FROM baijia';
    }

//    $sql = 'SELECT * FROM choiceness_newslists';
    mysqli_query($conn,"SET NAMES utf8");
    $result = mysqli_query($conn,$sql);
    //创建数组
    $senddata = array();
    //数据输入数组
    while ($row = mysqli_fetch_assoc($result)){
        array_push($senddata,array(
            'id'=>$row['id'],
            'tab'=>$row['tab'],
            'title' =>$row['title'],
            'type'=>$row['type'],
            'hot' => $row['hot'],
            'guessLike' => $row['guessLike'],
            'time' => $row['time'],
            'img01Src' => $row['img01Src'],
            'img02Src' => $row['img02Src'],
            'img03Src' => $row['img03Src'],
            'date' => $row['date'],
            'url' => $row['url']
        ));
    }
    //发送给前端
    echo json_encode($senddata);
}else{
    echo('连接失败');
}
mysqli_close($conn);
?>
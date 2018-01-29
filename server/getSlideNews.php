<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/9/7
 * Time: 15:26
 */

/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/8/29
 * Time: 15:57
 */
//本页功能是从数据库获取轮播图数据
require_once 'config.php';
//如果能连接成功则打印成功，否则打印失败
if ($conn){
//    echo('连接成功');
    $sql=null;
    $result=null;
    $senddata = null;
    if($_GET['newsTabSlide']=='精选轮播图'){
        $sql = 'SELECT * FROM choiceness_slideshow';
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
            'title' =>$row['title'],
            'imgSrc' => $row['imgSrc'],
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
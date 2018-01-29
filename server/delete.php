<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/8/31
 * Time: 17:53
 */
require_once 'config.php';
if($conn){
    $delNewsId = $_POST['newsid'];
    $newsTabName = $_POST['newsTab'];
    if ($newsTabName=='精选'){
        $sql = "DELETE FROM `choiceness_newslists` WHERE `choiceness_newslists`.`id`={$delNewsId} ";
    }
    if ($newsTabName=='百家'){
        $sql = "DELETE FROM `baijia` WHERE `baijia`.`id`={$delNewsId} ";
    }

    mysqli_query($conn,"SET NAMES utf8");
    mysqli_query($conn,$sql);
    //必须要返回json信息
    echo json_encode(array('删除状态'=>'成功'));
}
mysqli_close($conn);
?>
<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/9/1
 * Time: 11:04
 */

require_once 'config.php';
if($conn){
    //通过post获取数据
    $newsId = $_POST['newsId'];
    $newsId = intval($newsId);
    $newsTab = $_POST['newsTab'];
    $newsType= $_POST['newsType'];
    $newsType = intval($newsType);
    $newsTitle = $_POST['newsTitle'];
    $newsImg01 = $_POST['newsImg01'];
    $newsImg02 = $_POST['newsImg02'];
    $newsImg03 = $_POST['newsImg03'];
    $hot = $_POST['hot'];
//    $hot = intval($hot);
    $guessLike = $_POST['guessLike'];
//    $guessLike = intval($guessLike);
    $newsURL = $_POST['newsURL'];
    $newsDate = $_POST['newsDate'];
    $newsTime = $_POST['newsTime'];

    if($newsTab=='精选'){
        //修改数据带指定的数据表中
        $sql = "UPDATE `choiceness_newslists` SET `tab`='$newsTab', `type`=$newsType, `title`='$newsTitle',`date`='$newsDate', `time`='$newsTime',`hot`='$hot', `guessLike`='$guessLike', `img01Src`='$newsImg01', `img02Src`='$newsImg02', `img03Src`='$newsImg03', `url`='$newsURL' WHERE `choiceness_newslists`.`id` = $newsId";
    }
    if($newsTab=='百家'){
        //修改数据带指定的数据表中
        $sql = "UPDATE `baijia` SET `tab`='$newsTab', `type`=$newsType, `title`='$newsTitle',`date`='$newsDate', `time`='$newsTime',`hot`='$hot', `guessLike`='$guessLike', `img01Src`='$newsImg01', `img02Src`='$newsImg02', `img03Src`='$newsImg03', `url`='$newsURL' WHERE `choiceness_newslists`.`id` = $newsId";
    }

    //防止乱码
    mysqli_query($conn,"SET NAMES utf8");
    $result = mysqli_query($conn,$sql);
    echo json_encode(array('success'=>'OK'));


}
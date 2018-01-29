<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/8/31
 * Time: 10:43
 */
require_once 'config.php';
if($conn){
    //通过post获取数据
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
    //防止乱码
    //mysqli_query($conn,"SET NAMES utf-8");
    mysqli_query($conn,"SET NAMES utf8");
    //提交到不同的表单
    if ($newsTab=='精选'){
        //插入数据带指定的数据表中
        $sql = "INSERT INTO `choiceness_newslists` (`tab`, `type`, `title`,`date`, `time`, `hot`, `guessLike`, `img01Src`, `img02Src`, `img03Src`, `url`)VALUES ('$newsTab',$newsType,'$newsTitle','$newsDate','$newsTime','$hot','$guessLike','$newsImg01','$newsImg02','$newsImg03','$newsURL')";

    }
    if($newsTab=='百家'){
        $sql = "INSERT INTO `baijia` (`tab`, `type`, `title`,`date`, `time`, `hot`, `guessLike`, `img01Src`, `img02Src`, `img03Src`, `url`)VALUES ('$newsTab',$newsType,'$newsTitle','$newsDate','$newsTime','$hot','$guessLike','$newsImg01','$newsImg02','$newsImg03','$newsURL')";
    }
    //$sql = "INSERT INTO `jingxuanlist` (`tab`, `type`, `title`, `time`, `hot`, `guessLike`, `img01Src`, `img02Src`, `img03Src`, `url`)VALUES ('$newsTab',$newsType,'$newsTitle','$newsTime',$hot,$guessLike,'$newsImg01','$newsImg02','$newsImg03','$newsURL')";
    $result = mysqli_query($conn,$sql);
    echo json_encode(array('success'=>'OK'));

}
<?php
/**
 * Created by PhpStorm.
 * User: maizhijian
 * Date: 2017/8/30
 * Time: 10:27
 */
//内容为json类型
header("Content-type:application/json;charset=utf-8");
const MYSQL_HOST = 'localhost';
const MYSQL_USER = 'root';
const MYSQL_PW = '';

$conn = mysqli_connect(MYSQL_HOST,MYSQL_USER,MYSQL_PW,'baidunews');



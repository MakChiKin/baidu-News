-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-07 12:37:34
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baidunews`
--

-- --------------------------------------------------------

--
-- 表的结构 `baijia`
--

CREATE TABLE `baijia` (
  `id` int(11) NOT NULL,
  `tab` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `type` int(64) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `hot` varchar(32) NOT NULL,
  `guessLike` varchar(32) NOT NULL,
  `img01Src` varchar(512) CHARACTER SET utf8mb4 NOT NULL,
  `img02Src` varchar(512) CHARACTER SET utf8mb4 NOT NULL,
  `img03Src` varchar(512) CHARACTER SET utf8mb4 NOT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `baijia`
--

INSERT INTO `baijia` (`id`, `tab`, `type`, `title`, `date`, `time`, `hot`, `guessLike`, `img01Src`, `img02Src`, `img03Src`, `url`) VALUES
(3, '百家', 2, '为什么00后CEO总是沦为笑柄', '2017-09-07', '14:05:00', 'true', 'false', 'https://t12.baidu.com/it/u=3629591489,1783849050&fm=173&s=FB80EB0F68E2D01BC6B5D4DD030080A3&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=3599228418,3012408209&fm=173&s=E880F5134A2B728A0AF9F5F50100C022&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=3212727081,2957179824&fm=173&s=480ACD12155E45CC0CF941DB0000C0B2&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9486126509432007289%22%7D'),
(4, '百家', 2, '政府牵头，浙大阿里共建的之江实验室成立了！微创新将成历史？', '2017-09-07', '14:06:00', 'true', 'false', 'https://t10.baidu.com/it/u=100740279,4216405178&fm=173&s=BA0461805D06AF494EE01999030010C9&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=2088981010,2367040730&fm=173&s=F300DA094E763C8C0D00CDE0030060A7&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=3518685556,4116058168&fm=173&s=BB2168804C723A928885DA54030080F5&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9536636763744277432%22%7D'),
(5, '百家', 1, '5亿人民币！金砖国家用这些钱做什么', '2017-09-07', '14:08:00', 'true', 'false', 'https://t12.baidu.com/it/u=1448028263,3487765823&fm=173&s=10F0508597F4BA695CC97D8F0300A082&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_10255422394349873394%22%7D'),
(6, '百家', 1, '吃鸡出国服了！传腾讯已获得《绝地求生》中国代理权！', '2017-09-07', '14:09:00', 'true', 'false', 'https://t10.baidu.com/it/u=1100758173,167545276&fm=173&s=C023177299C066D04340A54F030060E3&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_10355249460209620279%22%7D'),
(7, '百家', 1, '朝鲜半岛局势的“底裤”，三胖还想来几炮？', '2017-09-07', '14:10:00', 'false', 'true', 'https://t11.baidu.com/it/u=699523498,1968925152&fm=173&s=DEC8E90D06AC1F036FA1C98C0300C0A2&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9548611785351364278%22%7D'),
(8, '百家', 2, '王菲太自私看不上李亚鹏，还嫌弃嫣然基金太俗', '2017-09-07', '14:11:00', 'false', 'true', 'https://t10.baidu.com/it/u=2746547589,3684438429&fm=173&s=40C09B45525310741E4821220300E043&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=1129783219,3827475466&fm=173&s=1B8E8E4D0AEA073A53D164BD03006043&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=1425625355,1873799887&fm=173&s=4B04E90B1283ACB253BD58E30300E030&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_10229609005145225904%22%7D'),
(9, '百家', 2, '沈梦辰大概对修图有什么误解，这张脸还是她的吗？', '2017-09-07', '14:14:00', 'false', 'true', 'https://t11.baidu.com/it/u=2232935431,1366552991&fm=173&s=F8922E9D28650011460171E10300E022&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=1418049622,728933138&fm=173&s=E6F013C4FAB85C1F9E2464B80300C082&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=3231234617,3263803855&fm=173&s=60B314D75AC39603BE0544F00300D030&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_10907231561937475076%22%7D'),
(10, '百家', 1, 'SAAS企业的当下之困', '2017-09-07', '14:15:00', 'false', 'false', 'https://t11.baidu.com/it/u=257591614,2188589298&fm=173&s=B888AD57927E7D8A1055D84703009071&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9877837349580790673%22%7D'),
(11, '百家', 1, '蚂蚁保险平台：任何产品都不会由单一机构独家经营 ', '2017-09-07', '14:16:00', 'false', 'false', 'https://t11.baidu.com/it/u=2169434494,1658588859&fm=173&s=97DEA4644AC255744E252DDB03008096&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9843452876439168522%22%7D'),
(12, '百家', 1, '虽然我不懂比特币 但我知道如何才能财富自由', '2017-09-07', '14:17:00', 'false', 'false', 'https://t12.baidu.com/it/u=991104761,3942126601&fm=173&s=1988AB5F59797C0177C5DDE10300E032&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9222676050220798996%22%7D'),
(13, '百家', 2, '阿加莎：我常常假装自己是成功作家', '2017-09-07', '14:20:00', 'false', 'false', 'https://t10.baidu.com/it/u=432857244,1014087299&fm=173&s=5D8129D126520FC008B074360300C042&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=3280913047,1921584021&fm=173&s=7D0435727AD8EC9ED191754A0100F0B0&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=266341968,2689569933&fm=173&s=ADC27A2300730D94DCB5249A010080C1&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9550279108780891868%22%7D'),
(14, '百家', 2, '曹雪芹是九段高手，高鹗却补上了初段招数', '2017-09-07', '14:21:00', 'false', 'false', 'https://t11.baidu.com/it/u=2589390274,254814443&fm=173&s=5DBAA7554D927C434A5D886A0300E078&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=2366269792,3653530056&fm=173&s=AFCAA35F87407D4104CD814F0300A073&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=1549065386,200182087&fm=173&s=EFD830D50FC04F431425485C0300C072&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9938153486485694746%22%7D'),
(15, '百家', 2, '为何与林心如苏有朋陈志朋关系差？周杰：有两人不配做内地人偶像', '2017-09-07', '14:22:00', 'false', 'false', 'https://t12.baidu.com/it/u=1659170345,2505201910&fm=173&s=13A061A709E30C8C7218A18E03009081&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=1766266035,3194008131&fm=173&s=23A3D30548231C110E34ADAB0300F011&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=218263797,1897567067&fm=173&s=2AF6E50450029101A6088A8E0300609F&w=218&h=146&img.JPEG', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_10254996926325122319%22%7D'),
(16, '百家', 1, 'PC指数榜单新鲜出炉，搜索及门户用户黏性较高', '2017-09-07', '14:29:00', 'false', 'false', 'https://t12.baidu.com/it/u=3789630623,421943599&fm=173&s=949ECC33DFDF49C818491A610300B074&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_10002511668781627320%22%7D'),
(17, '百家', 1, '亚金协：亚洲金融“朋友圈”诞生 27国共防金融风险', '2017-09-07', '14:31:00', 'false', 'false', 'https://t12.baidu.com/it/u=3208027790,2968211868&fm=173&s=E27B30C44BF8BC4F1456D2930300A08F&w=218&h=146&img.JPEG', '', '', 'https://baijiahao.baidu.com/po/feed/share?wfr=newsapp&context=%7B%22sourceFrom%22%3A%22bjh%22%2C%22nid%22%3A%22news_9941463596287724363%22%7D');

-- --------------------------------------------------------

--
-- 表的结构 `choiceness_newslists`
--

CREATE TABLE `choiceness_newslists` (
  `id` int(11) NOT NULL,
  `tab` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `type` int(64) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `hot` varchar(32) NOT NULL,
  `guessLike` varchar(32) NOT NULL,
  `img01Src` varchar(512) CHARACTER SET utf8mb4 NOT NULL,
  `img02Src` varchar(512) CHARACTER SET utf8mb4 NOT NULL,
  `img03Src` varchar(512) CHARACTER SET utf8mb4 NOT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `choiceness_newslists`
--

INSERT INTO `choiceness_newslists` (`id`, `tab`, `type`, `title`, `date`, `time`, `hot`, `guessLike`, `img01Src`, `img02Src`, `img03Src`, `url`) VALUES
(1, '精选', 1, '厉害了！日本机器人可以主持葬礼还能念佛经', '2017-09-01', '18:24:00', 'true', 'false', 'https://t11.baidu.com/it/u=214959052,3119896730&fm=173&s=4F500E881E930FF11E2C5D3703001052&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/15323082909524352054'),
(2, '精选', 2, '大一女生从高低铺摔下重伤　现仍未脱离生命危险', '2017-09-01', '18:08:00', 'true', 'false', 'https://t10.baidu.com/it/u=3108649206,2568837009&fm=173&s=8784F4494E4630490C3E1E110300C0D6&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=3055770856,2408991756&fm=173&s=0184D25D420B455746246904030080C2&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=3109018688,2491343911&fm=173&s=D21A3EC756075F5D768CE020030060D7&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/9177987831739389374'),
(3, '精选', 3, '中国经济关键时刻:从新供给形成到供给扩张', '2017-09-01', '18:08:00', 'false', 'true', '', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/692084092035421796'),
(72, '精选', 1, '王健林出什么事了 万达集团出什么事了', '2017-09-01', '18:08:00', 'false', 'true', 'https://t10.baidu.com/it/u=2245874856,1273327020&fm=173&s=E6CAFF0F9EBB0B8422193DB70300E040&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/4942700680856343258'),
(73, '精选', 2, '开学季｜大学新生享各式暧心“特供”：学校送出6千碗手工面', '2017-09-01', '18:08:00', 'true', 'false', 'https://t11.baidu.com/it/u=2017113106,824827839&fm=173&s=20ABC0B34EE9A8CE1405927003007054&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=2000632378,821043847&fm=173&s=6E526E854C1202DED68DC1960300C0C2&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=1906530979,810413288&fm=173&s=EF2A26C10C5302C220B979080300E0D0&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/7042525001365777674'),
(74, '精选', 2, '这个岗位很缺人,平均薪资15k,你居然不知道?', '2017-09-01', '17:36:00', 'true', 'false', 'https://ss0.bdstatic.com/9r-1bjml2gcT8tyhnq/fc-feed/0/pic/88ce2421d17176a1f36c0f70583cb8ac.jpg', 'https://ss0.bdstatic.com/9r-1bjml2gcT8tyhnq/fc-feed/0/pic/4b2dfeb0b05e5fa5eae58d4144b4da49.jpg', 'https://ss0.bdstatic.com/9r-1bjml2gcT8tyhnq/fc-feed/0/pic/010714798e69fa312e4bf2ca22add105.jpg', 'http://wap.qfedu.com/?javabdyd=xxl=qianzai2-03'),
(110, '精选', 1, '雷军求大家周末别去小米之家：人实在太多了', '2017-09-01', '18:08:00', 'true', 'false', 'https://t10.baidu.com/it/u=2695869492,1403842114&fm=173&s=1E45B8444BA098450EF7849B0300C09F&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/5362461833771202174'),
(111, '精选', 3, '【互联网改变生活惠及百姓】DT时代', '2017-09-01', '17:35:00', 'false', 'true', '', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/11681816441680152535'),
(112, '精选', 2, '印度上一季度经济增长率居然跌的这么厉害，而同期的中国……', '2017-09-01', '17:36:00', 'true', 'false', 'https://t11.baidu.com/it/u=1681099237,2083110397&fm=173&s=3EA14A869443475FD4BB72B30300D00A&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=884450401,1303350297&fm=173&s=38287033195E4DCA4ED571CE0100A0B1&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=2469264889,4128243373&fm=173&s=EEF1E25A83C378E30A7CD45A010040F3&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/10351765555865964827'),
(113, '精选', 2, '9月起，一大波新规来了，与你息息相关 | 关注', '2017-09-01', '18:08:00', 'true', 'false', 'https://t12.baidu.com/it/u=3467497472,1639653841&fm=173&s=75C0DF191553C7CE04417A6C03007070&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=3414494849,1223676620&fm=173&s=D96263D95D1040C61894EC48030080F1&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=1297209377,4216325517&fm=173&s=2CE24083367329842014BF9A03008015&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/15210282242140468967'),
(114, '精选', 2, '中国黄渤海伏季休渔结束 渔民出海盼丰收', '2017-09-01', '18:08:00', 'false', 'true', 'https://t10.baidu.com/it/u=3853971072,1288369293&fm=173&s=CFD02CC55AA3865106552C1F030050C2&w=218&h=146&img.JPEG', 'https://t12.baidu.com/it/u=3855903911,1290748578&fm=173&s=34135795141B4BCE548DA9D10300E0A3&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=3857836750,1293127863&fm=173&s=8B145F80C6A9590D306924C10300A0B2&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/11072356365995731892'),
(115, '精选', 1, '健身房还未开业就关门 百名会员被骗有人充值过万', '2017-09-01', '17:36:00', 'true', 'false', 'https://t10.baidu.com/it/u=3372782106,112344851&fm=173&s=A7D2539550664B0DA60D794F0300E070&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/5488832251463165047'),
(116, '精选', 2, '武大清出5000辆僵尸自行车　有几十年前老古董', '2017-09-01', '17:35:00', 'false', 'true', 'https://t10.baidu.com/it/u=3383567127,1766206890&fm=173&s=B80B67DB5C73BAD67EBD091F03005042&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=3158337438,2544763517&fm=173&s=64A9A2F1581882DE9E85E1050300E0C3&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=3383567127,1766206890&fm=173&s=B80B67DB5C73BAD67EBD091F03005042&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/8503767232723023659'),
(117, '精选', 1, '反垄断法颁布十周年，阿里却深陷垄断质疑', '2017-09-01', '17:35:00', 'false', 'true', 'https://t11.baidu.com/it/u=1972849,2160414450&fm=173&s=792834721DA64690064169EB0200B022&w=218&h=146&img.JPG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/17663837017577435580'),
(118, '精选', 1, '外媒：阿里巴巴寻找实体店来促进未来发展', '2017-09-01', '17:35:00', 'true', 'false', 'https://t10.baidu.com/it/u=2875868676,1582061210&fm=173&s=6AC0618209BAABCE784787990300408F&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/5503817715617013776'),
(119, '精选', 1, '扎克伯格身价2017 马云和扎克伯格谁有钱', '2017-09-01', '17:35:00', 'true', 'false', 'https://t11.baidu.com/it/u=1630671439,4166148375&fm=173&s=179C39C46B62341F9D59F00E030070C0&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/5083693659667841916'),
(120, '精选', 3, '美联储为什么要缩表？黄金价格会怎么走？', '2017-09-01', '17:35:00', 'true', 'false', '', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/12739133017859841183'),
(121, '精选', 3, '两男子偷了90元财物被发现　对民警大打出手', '2017-09-01', '17:35:00', 'true', 'false', '', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/8450962164645345982'),
(122, '精选', 3, '（国际）中国驻厄瓜多尔大使：被扣中国船只不存在非法捕捞行为', '2017-09-01', '17:35:00', 'true', 'false', '', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/9623471603123796331'),
(123, '精选', 2, '从伊朗难民到科技大佬，Uber新任CEO的传奇人生让人惊叹', '2017-09-01', '17:34:00', 'true', 'false', 'https://t11.baidu.com/it/u=3461370496,4035962448&fm=173&s=1088A9F8C0BA0D948E05641F0300D0D1&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=3461370496,4035962448&fm=173&s=1088A9F8C0BA0D948E05641F0300D0D1&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=2820389425,4043824692&fm=173&s=FA9521C04412A5DE0E35279F03008082&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/17540202239243122534'),
(124, '精选', 1, '贾跃亭转让乐视网股份 乐视影业将注入乐视网', '2017-09-01', '17:42:00', 'true', 'false', 'https://t11.baidu.com/it/u=4243064737,12062030&fm=173&s=89B6E416C560E511167DA1C20000F0B3&w=218&h=146&img.JPEG', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/8637561888085075350'),
(125, '精选', 3, '70余家企业达成债转股协议 力推国企混合所有制改革', '2017-09-01', '18:08:00', 'false', 'true', '', '', '', 'https://news.baidu.com/news?fr=mohome&ssid=0&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/6711206592334993129'),
(126, '精选', 2, '目前最不建议购买的两款iPhone，再便宜也别买！', '2017-09-01', '18:08:00', 'false', 'true', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1924425700,1207741017&fm=173&s=FF94EC08627B5E3E9C38F5870300E093&w=218&h=146&img.JPEG', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2641429023,2860873177&fm=173&s=C31213C57A1648D60C0BA408030050E3&w=218&h=146&img.JPEG', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3653208033,3365213497&fm=173&s=FB68A35743C059418E44B1C103006031&w=218&h=146&img.JPEG', 'https://www.baidu.com/?tn=18029102_5_oem_dg#iact=wiseindex%2Ftabs%2Fnews%2Factivity%2Fnewsdetail%3D%257B%2522linkData%2522%253A%257B%2522name%2522%253A%2522iframe%252Fmib-iframe%2522%252C%2522id%2522%253A%2522feed%2522%252C%2522index%2522%253A0%252C%2522url%2522%253A%2522https%253A%252F%252Ffeed.baidu.com%252Ffeed%252Fdata%252Fwise%252Flandingpage%253Fs_type%253Dnews%2526dsp%253Dwise%2526nid%253D10133498868506449343%2526n_type%253D1%2526p_from%253D-1%2522%252C%2522title%2522%253Anull%257D%257D'),
(127, '精选', 2, '9月12日已确定三款齐发！iphone8贵到没朋友！', '2017-09-01', '17:54:00', 'false', 'true', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2741051583,2155377555&fm=173&s=00B4C27D844139594191948D0300F0C2&w=218&h=146&img.JPEG', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2915146092,2383790823&fm=173&s=B6D7A56C22F786760EFC2C0D0100E0C0&w=218&h=146&img.JPEG', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=4221372488,3051008487&fm=173&s=B9A2299FDEAC089C86041D880300E040&w=218&h=146&img.JPEG', 'https://www.baidu.com/?tn=18029102_5_oem_dg#iact=wiseindex%2Ftabs%2Fnews%2Factivity%2Fnewsdetail%3D%257B%2522linkData%2522%253A%257B%2522name%2522%253A%2522iframe%252Fmib-iframe%2522%252C%2522id%2522%253A%2522feed%2522%252C%2522index%2522%253A0%252C%2522url%2522%253A%2522https%253A%252F%252Ffeed.baidu.com%252Ffeed%252Fdata%252Fwise%252Flandingpage%253Fs_type%253Dnews%2526dsp%253Dwise%2526nid%253D9641947849925391774%2526n_type%253D1%2526p_from%253D-1%2522%252C%2522title%2522%253Anull%257D%257D'),
(128, '精选', 2, '房东毁约捅伤买房者自己高楼坠亡　卖后房子涨价百万', '2017-09-06', '11:23:00', 'false', 'true', 'https://t11.baidu.com/it/u=3380809105,1876570743&fm=173&s=CA921FC1C81530CE52388515030040C1&w=218&h=146&img.JPEG', 'https://t11.baidu.com/it/u=3044267215,2403805931&fm=173&s=267271841D663E0F14F9389403008088&w=218&h=146&img.JPEG', 'https://t10.baidu.com/it/u=3353628507,2492418980&fm=173&s=7EA627C14A25A6CA54286D100300A0D0&w=218&h=146&img.JPEG', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/9484714394414177380');

-- --------------------------------------------------------

--
-- 表的结构 `choiceness_slideshow`
--

CREATE TABLE `choiceness_slideshow` (
  `id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `imgSrc` varchar(512) NOT NULL,
  `url` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `choiceness_slideshow`
--

INSERT INTO `choiceness_slideshow` (`id`, `title`, `imgSrc`, `url`) VALUES
(1, '从江南到西北的捕鱼人', 'https://timg01.bdimg.com/timg?tc&size=b579_362&sec=0&quality=75&cut_x=42&cut_y=0&cut_h=0&cut_w=579&di=7acd427e672dd4e5df2108048d945e8d&src=http%3A%2F%2Fimgsa.baidu.com%2Fnews%2Fq%253D100%2Fsign%3Dc8b3222fa76eddc420e7b0fb09dab6a2%2F728da9773912b31b7616c1e38c18367adbb4e186.jpg', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/14850884175858838937/carousel'),
(2, '77对情侣上演“熊抱女友”', 'https://timg01.bdimg.com/timg?tc&size=b579_362&sec=0&quality=75&cut_x=42&cut_y=0&cut_h=0&cut_w=579&di=5e71b2bdcdcdfb945d54c7f606b05bf7&src=http%3A%2F%2Fimgsa.baidu.com%2Fnews%2Fq%253D100%2Fsign%3D4b5dd8f9798da977482f822b8053f872%2Fb3fb43166d224f4a216968d903f790529922d103.jpg', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/13965769986882892029/carousel'),
(3, '杨幂生日现场照曝光撸起袖子', 'https://timg01.bdimg.com/timg?tc&size=b475_297&sec=0&quality=75&cut_x=82&cut_y=0&cut_h=0&cut_w=475&di=82b5de40d5c95194508e905dd9552fb4&src=http%3A%2F%2Fimgsa.baidu.com%2Fnews%2Fq%253D100%2Fsign%3D625814d327f5e0fee8188d016c6134e5%2F4610b912c8fcc3ce51bad2f99845d688d53f2085.jpg', 'https://news.baidu.com/news?fr=mohome&ssid=53206d61783135393134323530313130520d&from=844b&uid=&pu=sz%401320_2001%2Cta%40iphone_1_9.1_3_601&bd_page_type=1#/detail/11982213307032309016/carousel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baijia`
--
ALTER TABLE `baijia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choiceness_newslists`
--
ALTER TABLE `choiceness_newslists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choiceness_slideshow`
--
ALTER TABLE `choiceness_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `baijia`
--
ALTER TABLE `baijia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `choiceness_newslists`
--
ALTER TABLE `choiceness_newslists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- 使用表AUTO_INCREMENT `choiceness_slideshow`
--
ALTER TABLE `choiceness_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

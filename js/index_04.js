/**
 * Created by maizhijian on 2017/8/26.
 */
$(document).ready(function () {
    loadSlideshow();
    slideshow();/*这个要必须跟着loadSlideshow(),否则无法轮播*/
    setNavWidth();
    changeTab();
    NavSlide();
    openMore();
    closeMore();
    loadNewsList('精选');
    scrollSide();
    loadMoreTab();
    changeMoreTab();
})
// 打开更多导航面板
function openMore() {
    $('.navMore').click(function (event) {
        $('.morePlane').fadeIn();
        $('.moreArea').slideDown(900);
        $('.moreMask').fadeIn(300);
        loadMoveNav();
        event.stopPropagation();
    })
}
//收起更多导航面板
function closeMore() {
    $('.icon-arrow-up').click(function (event) {
        $('.morePlane').fadeOut(900);
        $('.moreArea').slideUp(300);
        $('.moreMask').fadeOut(900);
        event.stopPropagation();
    })
}
// 设置导航栏每个按钮的宽度
function loadMoveNav() {
    // 获取body的宽度
    var deviceWidth =  $('.moreList ul').width();
    // console.log(deviceWidth);
    // 遍历每一个导航按钮
    $('.moreList li').each(function (index,item) {
        // 找到有多少个字,如果多于两个字的就是想“互联网”三个字这些我们增加它的宽度
        if($(this).find('a').html().split('').length>2){
            // console.log(deviceWidth/3);
            $(this).width(deviceWidth/3);//占两个格
        }else {
            // console.log(deviceWidth/6);
            $(this).width(deviceWidth/6);//占一个格
        }
    })
}
function setNavWidth() {
    // 获取body的宽度
    var deviceWidth =  $('body').width();
    $('.navLeft').width(parseInt(deviceWidth)-45);

}
// 导航栏滑动效果
function NavSlide() {
    $('.navLeft').navbarscroll({
        defaultSelect:0,
        scrollerWidth:6,
        fingerClick:1,
        endClickScroll:function(obj){
            // console.log(obj.text())
        }
    });
}

function changeTab() {
    $('nav ul li a').click(function () {
        $('nav ul li a').removeClass('activate');
        $(this).addClass('activate');
        var tabName = $(this).text();
        $('article').empty();
        if(tabName=='精选'){
            loadSlideshow();
            slideshow()/*这个要必须跟着loadSlideshow(),否则无法轮播*/
        }
        loadNewsList(tabName);
    })
}

// 轮播图
function slideshow() {
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 0,//页面间距
        centeredSlides: true,
        autoplay: 3000,
        loop:true,
        autoplayDisableOnInteraction: false,
        observer:true,//修改swiper自己或子元素时，自动初始化swiper
        observeParents:true,//修改swiper的父元素时，自动初始化swiper
    });
}
// 拷贝数组

//添加新闻轮播图
function loadSlideshow() {
    var main = $('<div>').addClass('main').appendTo('article');
    var swiperContainer = $('<div>').addClass('swiper-container').appendTo(main);
    var swiperWrapper = $('<div>').addClass('swiper-wrapper').appendTo(swiperContainer);
    var swiperPagination = $('<div>').addClass('swiper-pagination').appendTo(swiperContainer);
    $.ajax({
        type: 'get',
        url: '../baiduNews_php/server/getSlideNews.php',
        datatype: 'json',
        data:{newsTabSlide:"精选轮播图"},
        success: function (data) {
            $.each(data,function (index,value) {
                var swiperSlide = $('<div>').addClass('swiper-slide').appendTo(swiperWrapper);
                var swiperSlide_A = $('<a>').appendTo(swiperSlide);
                swiperSlide_A.attr({
                    'href':$(value).attr('url'),
                    'target': $(value).attr('_blank')
                })
                var swiperSlide_A_img = $('<img>').appendTo(swiperSlide_A);
                swiperSlide_A_img.attr('src',$(value).attr('imgSrc'));
                var swiperSlide_A_p = $('<p>').appendTo(swiperSlide_A);
                var swiperSlide_A_p_span = $('<span>').appendTo(swiperSlide_A_p);
                swiperSlide_A_p_span.html($(value).attr('title'));
            })
            $('<div>').addClass('swiper-buttin-prev').appendTo(swiperPagination);
            $('<div>').addClass('swiper-buttin-next').appendTo(swiperPagination);
        }
    });


/*    $.each(choiceness02,function (index,value) {
        var swiperSlide = $('<div>').addClass('swiper-slide').appendTo(swiperWrapper);
        var swiperSlide_A = $('<a>').appendTo(swiperSlide);
        swiperSlide_A.attr({
            'href':$(value).attr('url'),
            'target': $(value).attr('_blank')
        })
        var swiperSlide_A_img = $('<img>').appendTo(swiperSlide_A);
        swiperSlide_A_img.attr('src',$(value).attr('imgSrc'));
        var swiperSlide_A_p = $('<p>').appendTo(swiperSlide_A);
        var swiperSlide_A_p_span = $('<span>').appendTo(swiperSlide_A_p);
        swiperSlide_A_p_span.text($(value).attr('title'));
    })
    $('<div>').addClass('swiper-pagination').appendTo(swiperContainer);*/
}

//添加新闻列表
function loadNewsList(tabName) {
    var mainNews = $('<div>').addClass('mainNews').appendTo('article');
    var newsLists = $('<ul>').addClass('newsLists').appendTo(mainNews);
    $.ajax({
        url:'../baiduNews_php/server/getNews.php',
        type:'get',
        datatype:'json',
        data:{newsTab:tabName},//传入tab选项
        success:function (data) {
            // console.log(data);
            $.each(data,function (index,value) {
                //加载A型新闻格式
                if ($(value).attr('type')=='1'){
                    var newsList_typeA = $('<li>').addClass('newsList_typeA').appendTo(newsLists);
                    var newsList_typeA_a = $('<a>').addClass('newsListSkip').appendTo(newsList_typeA);
                    newsList_typeA_a.attr({
                        'href':$(value).attr('url'),
                        'target': $(value).attr('_blank')
                    });
                    var newsImg_A = $('<div>').addClass('newsImg_A').appendTo(newsList_typeA_a);
                    var newsImg_A_img = $('<img>').appendTo(newsImg_A);
                    newsImg_A_img.attr('src',$(value).attr('img01Src'));
                    var newscontent_A = $('<div>').addClass('newscontent_A').appendTo(newsList_typeA_a);
                    var newscontent_A_h1 =$('<h1>').addClass('newsTitle').appendTo(newscontent_A);
                    newscontent_A_h1.text($(value).attr('title'));
                    var newscontent_A_p = $('<p>').appendTo(newscontent_A);
                    var newscontent_A_newsTime = $('<span>').addClass('newsTime').appendTo(newscontent_A_p);
                    newscontent_A_newsTime.text($(value).attr('time'));
                    //如果是热点
                    if($(value).attr('hot')=='true'){
                        var newscontent_A_newsTag = $('<span>').addClass('newsTag').appendTo(newscontent_A_p);
                        newscontent_A_newsTag.text('热点');
                    }
                    else if($(value).attr('guessLike')=='true'){
                        var newscontent_A_newsTag = $('<span>').addClass('newsTag').appendTo(newscontent_A_p);
                        newscontent_A_newsTag.text('猜你喜欢');
                    }
                }
                //加载B型新闻格式
                if ($(value).attr('type')=='2'){
                    var newsList_typeB = $('<li>').addClass('newsList_typeB').appendTo(newsLists);
                    var newsList_typeB_a = $('<a>').appendTo(newsList_typeB);
                    newsList_typeB_a.attr({
                        'href':$(value).attr('url'),
                        'target': $(value).attr('_blank')
                    });
                    var newscontent_B = $('<div>').addClass('newscontent_B').appendTo(newsList_typeB_a);
                    var newsTitle = $('<h1>').addClass('newsTitle').appendTo(newscontent_B);
                    newsTitle.text($(value).attr('title'));
                    var newsImg_B = $('<div>').addClass('newsImg_B').appendTo(newsList_typeB_a);
                    var newsImg_B_div01 = $('<div>').appendTo(newsImg_B);
                    var newsImg_B_img01 = $('<img>').appendTo(newsImg_B_div01);
                    newsImg_B_img01.attr('src',$(value).attr('img01Src'))

                    var newsImg_B_div02 = $('<div>').appendTo(newsImg_B);
                    var newsImg_B_img02 = $('<img>').appendTo(newsImg_B_div02);
                    newsImg_B_img02.attr('src',$(value).attr('img02Src'))

                    var newsImg_B_div03 = $('<div>').appendTo(newsImg_B);
                    var newsImg_B_img03 = $('<img>').appendTo(newsImg_B_div03);
                    newsImg_B_img03.attr('src',$(value).attr('img03Src'))

                    var newsList_typeB_a_p = $('<p>').appendTo(newsList_typeB_a);
                    var newsList_typeB_newsTime = $('<span>').addClass('newsTime').appendTo(newsList_typeB_a_p);
                    newsList_typeB_newsTime.text($(value).attr('time'));
                    //如果是热点
                    if($(value).attr('hot')=='true'){
                        var newsList_typeB_newsTag = $('<span>').addClass('newsTag').appendTo(newsList_typeB_a_p);
                        newsList_typeB_newsTag.text('热点');
                    }
                    else if($(value).attr('guessLike')=='true'){
                        var newsList_typeB_newsTag = $('<span>').addClass('newsTag').appendTo(newsList_typeB_a_p);
                        newsList_typeB_newsTag.text('猜你喜欢');
                    }
                }
                //加载C型新闻格式
                if ($(value).attr('type')=='3'){
                    var newsList_typeC = $('<li>').addClass('newsList_typeC').appendTo(newsLists);
                    var newsList_typeC_a = $('<a>').appendTo(newsList_typeC);
                    newsList_typeC_a.attr({
                        'href':$(value).attr('url'),
                        'target': $(value).attr('_blank')
                    });
                    var newscontent_B02 = $('<div>').addClass('newscontent_B').appendTo(newsList_typeC_a);
                    var newscontent_B02_h1 = $('<h1>').addClass('newsTitle').appendTo(newscontent_B02);
                    newscontent_B02_h1.text($(value).attr('title'));
                    var newsList_typeC_a_p = $('<p>').appendTo(newsList_typeC_a);
                    var newsList_typeC_newsTime = $('<span>').addClass('newsTime').appendTo(newsList_typeC_a_p);

                    newsList_typeC_newsTime.text($(value).attr('time'));

                    //如果是热点
                    if($(value).attr('hot')=='true'){
                        var newsList_typeC_newsTag = $('<span>').addClass('newsTag').appendTo(newsList_typeC_a_p);
                        newsList_typeC_newsTag.text('热点');
                    }
                    else if($(value).attr('guessLike')=='true'){
                        var newsList_typeC_newsTag = $('<span>').addClass('newsTag').appendTo(newsList_typeC_a_p);
                        newsList_typeC_newsTag.text('猜你喜欢');
                    }

                }
            })
        }
    });

}
//设置滚动条开关
var scrollSideOpen = true;//true为可以触发事件
//滚动条到底即马上触发事件
function scrollSide() {
    $(window).scroll(function(){
        var viewH =$(this).height();//可见高度
        var contentH = $('article').height();
        var scrollTop =$(this).scrollTop();//滚动高度
        // console.log("可见高度:"+viewH);
        // console.log("内容高度"+contentH);
        // console.log("滚动高度:"+scrollTop);
        //if(contentH - viewH - scrollTop <= 100) { //到达底部100px时,加载新内容
        // console.log(scrollTop/(contentH -viewH));
        if(scrollTop/(contentH -viewH)>=0.98){ //到达底部100px时,加载新内容
            // 这里加载数据..
            // 获取当前页面名称
            if (scrollSideOpen){
                var curTabName = $('.activate a').text();
                // console.log(curTabName);
                scrollSideOpen =false;//
                loadNewsList(curTabName);
            }
        }
        else{
            scrollSideOpen =true;
        }
    });
}

// 更多面板Tab切换
function loadMoreTab() {
    $('.navMore').click(function () {
        // 获取当前页面名称
        var curTabIndex = $('.activate').index();
        $('#moreLists li a').removeClass('activate');//！！！！注意这里是id
        // console.log(curTabIndex);
        $('#moreLists li').eq(curTabIndex).children('a').addClass('activate');
    })
}
function changeMoreTab() {
    $('#moreLists li').click(function () {
        //去除所有高亮
        $('#moreLists li a').removeClass('activate');
        //添加当前点击的高亮
        $(this).children('a').addClass('activate');
        // 获取当前页面名称
        var curTabIndex = $(this).index();
        // console.log(curTabIndex);
        //改变外面导航条的高亮
        //去除所有外面导航栏的高亮
        $('.clearfix li a').removeClass('activate');//！！！！注意这里是class
        //添加对应的高亮
        $('.clearfix li').eq(curTabIndex).children('a').addClass('activate');
        $('article').empty();
        if (curTabIndex==0){
            loadSlideshow();
            slideshow();/*这个要必须跟着loadSlideshow(),否则无法轮播*/
            loadNewsList('精选');
        }
        if (curTabIndex==1){
            loadNewsList('百家');
        }

    })
}
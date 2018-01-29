/**
 * Created by maizhijian on 2017/8/26.
 */
$(document).ready(function () {
    loadNav();
    changeTab();
})
// 设置导航栏每个按钮的宽度
function loadNav() {
    // 获取body的宽度
    var deviceWidth =  $('body').width();
    // 遍历每一个导航按钮
    $('nav li').each(function (index,item) {
        // 找到有多少个字,如果多于两个字的就是想“互联网”三个字这些我们增加它的宽度
        if($(this).find('a').html().split('').length>2){
            $(this).width(deviceWidth/3);//占两个格
        }else {
            $(this).width(deviceWidth/6);//占一个格
        }
    })
}

function changeTab() {
    $('nav ul li a').click(function () {
        $('nav ul li a').removeClass('activate');
        $(this).addClass('activate');
        $('article').empty();
    })
}


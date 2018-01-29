/**
 * Created by maizhijian on 2017/8/30.
 */
//打开后台页面的时候发送请求，刷新新闻列表
$(document).ready(function () {
    refreshNewsAll();
    addNews();
    deleteNews();
    editNews();
})
function refreshNewsAll(){
    refreshNews('精选');
    refreshNews('百家');
}
// 刷新后台数据列表
function refreshNews(tabName) {
    //清空表格内容
    var $newsTable = $('#newsTable tbody');
    var $newsTable_baijia = $('#newsTable_baijia tbody');
    $newsTable.empty();
    $newsTable_baijia.empty();
    //通过ajax访问后台数据
    $.ajax({
        type:'get',
        url:'../baiduNews_php/server/getNews.php',
        datatype:'jsonDate',
        data:{newsTab:tabName},//传入tab选项
        success:function (data) {
             console.log(data);
            //$.each(JSON.parse(data),function (index,value) {
            $.each(data,function (index,value) {
                // console.log(parseInt(index)+1);
                var tdNum = $('<td>').html(parseInt(index)+1);
                var tdID = $('<td>').html($(value).attr('id'));
                var tdTab = $('<td>').html($(value).attr('tab'));
                var tdType = $('<td>').html($(value).attr('type'));
                var tdTitle = $('<td>').html($(value).attr('title'));
                var tdHot = $('<td>').html($(value).attr('hot'));
                var tdDate= $('<td>').html($(value).attr('date'));
                var tdTime = $('<td>').html($(value).attr('time'));
                var tdCtrl = $('<td>');
                var btnEdit = $('<button>').addClass('btn btn-primary').html('编辑');
                var btndel = $('<button>').addClass('btn btn-danger').html('删除');
                tdCtrl.append(btnEdit,btndel)
                var tRow = $('<tr>');
                tRow.append(tdNum,tdID,tdTab,tdType,tdTitle,tdHot,tdDate,tdTime,tdCtrl);
                if(tabName=='精选'){
                    $('#newsTable tbody').append(tRow);
                }
                if(tabName=='百家'){
                    $('#newsTable_baijia tbody').append(tRow);
                }

            })
        }
    })
}

// 获取时间
function getTime() {
    var mydate = new Date();
    var hours = mydate.getHours(); //获取当前小时数(0-23)
    var minutes = mydate.getMinutes(); //获取当前分钟数(0-59)
    var currentDate = mydate.toLocaleDateString(); //获取当前日期
    var currentTime01 = mydate.toLocaleTimeString(); //获取当前时间
    var currentTime = hours+":"+minutes; //获取当前时间
    return currentTime;

}
// 获取日期
function getDate() {
    var mydate = new Date();
    var currentDate = mydate.toLocaleDateString(); //获取当前日期
    var currentDT = mydate.toLocaleString(); //获取日期与时间
    return currentDate;
}
//清除存在数据
function clearData() {
    $('#newsTab').val(''),
    $('#newsType').val(''),
    $('#newsTitle').val(''),
    $('#newsImg01').val(''),
    $('#newsImg02').val(''),
    $('#newsImg03').val(''),
    $('#hot').val(''),
    $('#guessLike').val(''),
    $('#newsURL').val('')
}



//提交新闻
function insertNews() {

    var jsonNews = {
        newsTab: $('#newsTab').val(),
        newsType: $('#newsType').val(),
        newsTitle: $('#newsTitle').val(),
        newsImg01: $('#newsImg01').val(),
        newsImg02: $('#newsImg02').val(),
        newsImg03: $('#newsImg03').val(),
        hot: $('#hot').prop('checked'),
        guessLike: $('#guessLike').prop('checked'),
        newsURL: $('#newsURL').val(),
        newsDate: getDate(),
        newsTime: getTime(),
    }
    console.log($('#hot').prop('checked'));
    $.ajax({
        url:'../baiduNews_php/server/insert.php',
        type:'post',
        data:jsonNews,
        datatype:'json',
        success:function (data) {
            console.log(data);
            //提交提示
            $.each(data,function (index,value) {
                if(value=='OK'){
                    var count = 5;
                    var countdown = setInterval(CountDown, 1000);
                    function CountDown() {
                        if(count>=0){
                            $('#hint').html('提交成功！' + count + "s").addClass('hintSuccess').fadeIn(1);
                        }
                        if (count <= 0) {
                            $('#hint').fadeOut(300);
                            clearInterval(countdown);
                        }
                        count--;
                        // console.log(count);
                    }

                }
                else{
                    var count = 5;
                    var countdown = setInterval(CountDown, 1000);
                    function CountDown() {
                        if (count >= 0) {
                            $('#hint').html('提交失败！').addClass('hintDefeated').fadeIn(1);
                        }
                        if (count <= 0) {
                            $('#hint').fadeOut(300);
                            clearInterval(countdown);
                        }
                        count--;
                        // console.log(count);
                    }

                }
            })
            refreshNewsAll();
        }
    })
    clearData();
}
//添加新闻
function addNews() 
{
    $('#btnSubmit').click(function (e) {
        //阻止元素发生默认的行为（例如，当点击提交按钮时阻止对表单的提交）
        e.preventDefault();
        //输入判断
        // 如果是一张图片形式
        if($('#newsType').val()=='1'){
            if ($('#newsImg01').val()===''){
                $('#newsImg01').parent().addClass('has-error');
            }
            else if($('#newsTitle').val()===''){
                $('#newsTitle').parent().addClass('has-error');
            }
            else if ($('#newsURL').val()===''){
                $('#newsURL').parent().addClass('has-error');
            }
            else {insertNews();}
        }
        // 如果是三张图片形式
        if($('#newsType').val()=='2'){
            if ($('#newsImg01').val()===''){
                $('#newsImg01').parent().addClass('has-error');
            }
            else if ($('#newsImg02').val()===''){
                $('#newsImg02').parent().addClass('has-error');
            }
            else if ($('#newsImg03').val()===''){
                $('#newsImg03').parent().addClass('has-error');
            }
            else if($('#newsTitle').val()===''){
                $('#newsTitle').parent().addClass('has-error');
            }
            else if ($('#newsURL').val()===''){
                $('#newsURL').parent().addClass('has-error');
            }
            else { insertNews()}
        }
        // 如果是没有图片形式
        if($('#newsType').val()=='3'){
            if($('#newsTitle').val()===''){
                $('#newsTitle').parent().addClass('has-error');
            }
            else if ($('#newsURL').val()===''){
                $('#newsURL').parent().addClass('has-error');
            }
            else { insertNews()}
        }
    })

}

// 删除新闻
function deleteNews() {
    var deleteID;
    //由于按钮是动态生成，所以需要点击到它的最上层来找到下面的对象，再发生事件
    // 第一个表的按钮
    $('#newsTable tbody').on('click','.btn-danger',function (e) {
        //弹出提示面板
        $('#deleteModal').modal('show');
        //找到该行的id
        deleteID = $(this).parent().prevAll().eq(7).html();
        deleteNews_ajax(deleteID,'精选');
    })
    // 第二个表的按钮
    $('#newsTable_baijia tbody').on('click','.btn-danger',function (e) {
        //弹出提示面板
        $('#deleteModal').modal('show');
        //找到该行的id
        deleteID = $(this).parent().prevAll().eq(7).html();
        deleteNews_ajax(deleteID,'百家');
    })
}
// 发送到php后台删除
function deleteNews_ajax(deleteID,newsTabName) {
    $('#confirmDelete').click(function (e) {
        if(deleteID){
            $.ajax({
                url:'../baiduNews_php/server/delete.php',
                type:'post',
                data:{
                    newsid:deleteID,
                    newsTab:newsTabName,
                },
                success:function (data) {
                    // console.log('删除成功'+data);
                    $('#deleteModal').modal('hide');
                    refreshNewsAll();
                }
            })
        }
    })
}

//编辑新闻
function editNews() {
    var editID;
    //由于按钮是动态生成，所以需要点击到它的最上层来找到下面的对象，再发生事件
    $('#newsTable tbody').on('click','.btn-primary',function (e) {
        //弹出提示面板
        $('#editModal').modal('show');
        //找到该行的id
        editID = $(this).parent().prevAll().eq(7).html();
        //载入数据到编辑窗口
        if(editID){
            $.ajax({
                url:'../baiduNews_php/server/getOneInfo.php',
                type:'get',
                datatype:'json',
                data:{newsId:editID},
                success:function (data) {
                    //true false转型
                    if((data[0].hot)=='true'){
                       var eidtHot = true;
                    }else{
                        var eidtHot = false;
                    }
                    if((data[0].guessLike)=='true'){
                        var eidtGuessLike = true;
                    }else{
                        var eidtGuessLike = false;
                    }
                    $('#eidtNewsTab').val(data[0].tab);
                    $('#eidtNewsType').val(data[0].type);
                    $('#eidtNewsTitle').val(data[0].title);
                    $('#eidtNewsImg01').val(data[0].img01Src);
                    $('#eidtNewsImg02').val(data[0].img02Src);
                    $('#eidtNewsImg03').val(data[0].img03Src);
                    $('#eidtHot').prop('checked',eidtHot);
                    $('#eidtGuessLike').prop('checked',eidtGuessLike);
                    $('#eidtNewsURL').val(data[0].url);
                }
            })
        }
    })
    //发送修改好的数据到后台
    $('#confirmEdit').click(function (e) {
        var jsonEditNews = {
            newsId:editID,
            newsTab: $('#eidtNewsTab').val(),
            newsType: $('#eidtNewsType').val(),
            newsTitle: $('#eidtNewsTitle').val(),
            newsImg01: $('#eidtNewsImg01').val(),
            newsImg02: $('#eidtNewsImg02').val(),
            newsImg03: $('#eidtNewsImg03').val(),
            hot: $('#eidtHot').prop('checked'),
            guessLike: $('#eidtGuessLike').prop('checked'),
            newsURL: $('#eidtNewsURL').val(),
            newsDate: getDate(),
            newsTime: getTime(),
        }
        console.log($('#eidtHot').prop('checked'));
        if(editID){
            $.ajax({
                url:'../baiduNews_php/server/edit.php',
                type:'post',
                data:jsonEditNews,
                success:function (data) {
                    console.log(data)
                    $('#editModal').modal('hide');
                    refreshNewsAll();
                }
            })
        }
    })

}
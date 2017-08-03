<%--
  Created by IntelliJ IDEA.
  User: 情绪1877
  Date: 2017/7/28
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%--引入bootsrap支持--%>

<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/s.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<%--新增司机js部分--%>
<script type="text/javascript">
    //单击按钮添加时，打开新增模态层
    $(document).ready(function () {
        $("#open_add_modal").click(function () {
            $("#add_driver_modal").modal({
                backdrop: "static",
                keyboard: false
            })

        })

//        给新增工种选择绑定单击事件调用，选择工种模态层
        $("#add_open_work_type_modal").click(function () {
            $("#work_type_modal").modal({
                backdrop: "static",
                keyboard: false
            })
//            因为调用双层模态框会导致第一层模态框因为模态框自带的遮罩，只能看到与第二层模态框大小一致的body以下
//            两种方法可以解决
//            首先给第二层模态框绑定hidden事件。
            $('#work_type_modal').on('hidden.bs.modal', function () {
//
// 方法一可以解决但是该方法会导致页面出现两个滚动条不可取
//                $('#add_driver_modal').css({'overflow': 'auto'});
                //方法二是给body新的遮罩
                $("#body").addClass("modal-open");
            });


        })
//        给新增班次选择绑定单击事件调用，选择班次模态层
        $("#add_open_shift_modal").click(function () {
            $("#shift_modal").modal({
                backdrop: "static",
                keyboard: false
            })
//         当选择新增的班次模态层关闭时，进入新的方法，给新增司机模态框增加滚动
            $('#shift_modal').on('hidden.bs.modal', function () {
                $("#body").addClass("modal-open");
            });


        })


    })


    <%--$("#add_student_form").click(function () {--%>
    <%--if (valiData_add() == false) {--%>
    <%--return false--%>
    <%--}--%>
    <%--alert(valiData_add())--%>
    <%--var addData = $("#student_form_id").serialize();--%>
    <%--$.post("${pageContext.request.contextPath}/student/doAdd.controller", addData, function (data, status) {--%>
    <%--if (status == "success") {--%>

    <%--alert(data.msg)--%>
    <%--if (data.msg == "添加成功") {--%>
    <%--//关闭模态框--%>
    <%--$("#这里是唯一标识哦").modal('hide')--%>
    <%--//跳转最后一页--%>
    <%--location.href = "${pageContext.request.contextPath}/student/doStudent.controller?pn=" +--%>
    <%--${page.total}--%>


    <%--}--%>


    <%--}--%>
    <%--})--%>
    <%--})--%>


    <%--})--%>

    <%--function valiData_add() {--%>
    <%--var vailName = /^[a-z0-9_-]|[\u2E80-\u9FFF]{2,8}$/--%>
    <%--if (!vailName.test($("#stuname").val())) {--%>
    <%--clear_add_vailData($("#stuname"), 'error', '学生姓名在2到8位且不能出现特殊符号')--%>
    <%--return false;--%>

    <%--} else {--%>
    <%--clear_add_vailData("#stuname", "success", "")--%>
    <%--}--%>

    <%--}--%>

    <%--function clear_add_vailData(id, status, msg) {--%>
    <%--$(id).parent().removeClass("has-error has-success")--%>
    <%--$(id).next("span").text("")--%>

    <%--if (status == "error") {--%>
    <%--$(id).parent().addClass("has-error")--%>
    <%--$(id).next("span").text(msg)--%>
    <%--return false;--%>

    <%--} else {--%>
    <%--$(id).parent().addClass("has-success")--%>
    <%--}--%>


    <%--}--%>


    <%--function mergeTable(tabObj, colIndex) {--%>
    <%--if (tabObj != null) {--%>
    <%--var i, j;--%>
    <%--var intSpan;--%>
    <%--var strTemp;--%>
    <%--for (colIndex; colIndex < tabObj.rows.length - 1; colIndex++) {--%>
    <%--for (i = 0; i < tabObj.rows.length; i++) {--%>
    <%--intSpan = 1;--%>
    <%--strTemp = tabObj.rows[i].cells[colIndex].innerText;--%>


    <%--for (j = i + 1; j < tabObj.rows.length; j++) {--%>
    <%--if (strTemp == tabObj.rows[j].cells[colIndex].innerText) {--%>
    <%--intSpan++;--%>
    <%--tabObj.rows[i].cells[colIndex].rowSpan = intSpan;--%>
    <%--tabObj.rows[i].cells[colIndex].style = "vertical-align:middle";--%>
    <%--tabObj.rows[j].cells[colIndex].style.display = "none";--%>
    <%--} else {--%>
    <%--break;--%>
    <%--}--%>
    <%--}--%>
    <%--i = j - 1;--%>
    <%--}--%>
    <%--}--%>
    <%--}--%>
    <%--}--%>



    <%--点击图片进入单击事件add_img事件从而激活定义的file功能并且将img标签的id存在全局变量中--%>

    var allId = 0;
    function add_img(id) {
        $("#add_file").click();
        allId = id
        alert(i);
    }

    //当file改变时进入load_img方法 并且将本地图片替换定义的img标签根据全局变量中img的Id决定替换那个img

    function load_img() {
        var r = new FileReader();
        f = document.getElementById('add_file').files[0];
        r.readAsDataURL(f);
        r.onload = function () {
            document.getElementById(allId).src = this.result;

        };
    }
</script>

<%--修改司机js部分--%>
<script type="text/javascript">


    //    打开修改司机信息模态框
    function open_driver_modal() {
            $("#update_driver_modal").modal({
                backdrop: "static",
                keyboard: false
            })

        }
    $(document).ready(function () {


//        给修改工种选择绑定单击事件调用，选择工种模态层
        $("#update_open_work_type_modal").click(function () {
            $("#work_type_modal").modal({
                backdrop: "static",
                keyboard: false
            })
//            当修改的选择工种模态层关闭时，进入新的方法，给新增司机模态框增加滚动
            $('#work_type_modal').on('hidden.bs.modal', function () {
                $("#body").addClass("modal-open");            });


        })
//        给修改的班次选择绑定单击事件调用，选择班次模态层
        $("#update_open_shift_modal").click(function () {
            $("#shift_modal").modal({
                backdrop: "static",
                keyboard: false
            })
//         当选择修改的班次模态层关闭时，进入新的方法，给新增司机模态框增加滚动
            $('#shift_modal').on('hidden.bs.modal', function () {
                $("#body").addClass("modal-open");            });


        })


    })

</script>




<html>
<head>
    <title>Title</title>
</head>
<body id="body">
<%--显示司机列表--%>
<div class="container-fluid" >

    <fieldset style="border-color:#99b2ff">
        <legend style="color: #99b2ff"> 司机信息</legend>
        <form class="form-inline">
            <div class="row">


                <div class="form-group col-sm-4" style="left: 6%;">
                    <label for="test1">司机姓名：</label>
                    <input type="text" id="test1" class="form-control " style="width: 40%" placeholder="请输入司机姓名">
                </div>
                <div class="form-group  col-sm-3" style="right: 5%">
                    <label for="test2">司机状态：</label>
                    <select class="form-control" style="width: 50%" id="test2">
                        <option>请选择</option>
                    </select>

                </div>
                <div class="form-group   col-sm-3" style="right: 6%">
                    <label for="test3">司机工种：</label>
                    <select class="form-control" style="width: 50%" id="test3">
                        <option>请选择</option>
                    </select>

                </div>

                <button type="submit" class="btn btn-primary " style="background-color:#99b2ff ;right: 5%; width: 7%">
                    查询
                </button>

                <button type="submit" class="btn btn-primary " style="background-color:#99b2ff ;left: 5%; width: 7%">
                    重置
                </button>

            </div>
            <br>
            <div class="row">


                <div class="form-group  col-sm-4" style="left: 6%;">

                    <label>司机班次：</label>
                    <select class="form-control" style="width: 40%" >
                        <option>请选择</option>
                    </select>                </div>
                <div class="form-group  col-sm-3" style="right: 5%">
                    <label for="test5">所属站点：</label>
                    <select class="form-control" style="width: 50%" id="test5">
                        <option>请选择</option>
                    </select>

                </div>
                <div class="form-group   col-sm-3" style="right: 6%">
                    <label for="test6">准驾类型：</label>
                    <select class="form-control" style="width: 50%" id="test6">
                        <option>请选择</option>
                    </select>

                </div>


            </div>

        </form>
    </fieldset>
    <br>
    <%--外层包框--%>
    <fieldset style="border-color:#99b2ff">


        <div class="row">
            <div class="col-md-12 text-left  btn-group-lg ">
                <br>
                <button class="btn btn-primary" id="open_add_modal">添加</button>
            </div>
        </div>
        <br>
        <%--内容--%>
        <div class="row">
            <div class="col-md-12">
                <table id="table1" class="table  table-condensed table-bordered table-hover table-striped">
                    <thead>
                    <tr>
                        <th class="text-center">操作</th>
                        <th class="text-center">编号</th>
                        <th class="text-center">司机姓名</th>
                        <th class="text-center">司机性别</th>
                        <th class="text-center">联系方式</th>
                        <th class="text-center">司机工种</th>
                        <th class="text-center">司机班次</th>
                        <th class="text-center">准驾类型</th>
                        <th class="text-center">归属单位</th>
                        <th class="text-center">司机状态</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr class="text-center">
                        <td class="center">
                            <a class="glyphicon glyphicon-pencil btn  " onclick="open_driver_modal()"
                               style="color: black ;"></a>
                        </td>
                        <td>Sj001</td>
                        <td>张云龙</td>
                        <td>男</td>
                        <td>18766554432</td>
                        <td>罐车司机</td>
                        <td>白班</td>
                        <td>B1</td>
                        <td>顺义</td>
                        <td>司机状态</td>
                    </tr>
                    <tr class="text-center">
                        <td>
                            <a class="glyphicon glyphicon-pencil btn  " style="color: black ;"></a>
                        </td>
                        <td>Sj001</td>
                        <td>张云龙</td>
                        <td>男</td>
                        <td>18766554432</td>
                        <td>罐车司机</td>
                        <td>白班</td>
                        <td>B1</td>
                        <td>顺义</td>
                        <td>司机状态</td>
                    </tr>
                    <tr class="text-center">
                        <td>
                            <a class="glyphicon glyphicon-pencil btn  " style="color: black ; "></a>
                        </td>
                        <td>Sj001</td>
                        <td>张云龙</td>
                        <td>男</td>
                        <td>18766554432</td>
                        <td>罐车司机</td>
                        <td>白班</td>
                        <td>B1</td>
                        <td>顺义</td>
                        <td>司机状态</td>
                    </tr>
                    <tr class="text-center">
                        <td>
                            <a class="glyphicon glyphicon-pencil btn  " style="color: black ; "></a>

                        </td>
                        <td>Sj001</td>
                        <td>张云龙</td>
                        <td>男</td>
                        <td>18766554432</td>
                        <td>罐车司机</td>
                        <td>白班</td>
                        <td>B1</td>
                        <td>顺义</td>
                        <td>司机状态</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br>
        <!--!!!!分页!!!!!-->
        <div class="row">
            <div class="col-md-4">
                当前为第1页/共1页/共记录有10条数据
            </div>
            <div class="col-md-6  col-md-offset-6 text-right">
                <nav aria-label="Page navigation">
                    <ui class="pagination">
                        <li>
                            <a href="#">首页</a></li>
                        </li>
                        <li>
                            <a href="#"
                               aria-label="Previous">
                                <span aria-hidden="true">上一页</span>
                            </a>
                        </li>
                        <li>
                            <a href="#"

                               aria-label="Next">
                                <span aria-hidden="true">下一页</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">尾页</a>

                        </li>
                        当前
                        <li><label>
                            <select class="form-control" id="pageSize" asize="1">
                                <option selected="selected" value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </label>
                        </li>
                        页
                    </ui>
                </nav>
            </div>
        </div>


        <!--!!!!分页结束!!!!!-->


    </fieldset>

    <%--新增模态层（类似window窗口）--%>
    <!-- Modal -->
    <div class="modal fade" id="add_driver_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div style="width:80%;" class="modal-dialog  modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel" align="center">新增司机信息</h4>
                </div>
                <div class="modal-body">

                        <fieldset style="border-color:#99b2ff">
                            <form class="form-inline">
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>司机姓名：</label>
                                        <input type="text" class="form-control " style="width:43%"
                                               placeholder="">
                                        <span style="color:red;">*</span>
                                    </div>

                                    <div class="form-group  col-sm-6">
                                        <label>司机性别：</label>
                                        <select class="form-control" style="width: 43%">
                                        </select>
                                        <span style="color:red;">&nbsp</span>


                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>司机工种：</label>
                                        <div class="form-group" style="width: 43%;">
                                            <div class="input-group">
                                                <input type="text" readonly class="form-control" id="">
                                                <div class="input-group-addon btn btn-primary "
                                                     id="add_open_work_type_modal"
                                                     style="background-color:#99b2ff ; width: 30%">选择
                                                </div>
                                            </div>
                                        </div>

                                        <span style="color:red;">*</span>
                                    </div>

                                    <div class="form-group col-sm-6">
                                        <label>司机班次：</label>
                                        <div class="form-group" style="width: 43%;">
                                            <div class="input-group">
                                                <input type="text" readonly class="form-control">
                                                <div class="input-group-addon btn btn-primary " id="add_open_shift_modal"
                                                     style="background-color:#99b2ff ; width: 30%">选择
                                                </div>
                                            </div>
                                        </div>

                                        <span style="color:red;">*</span>
                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>所属站点：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">
                                        <span style="color:red;">*</span>

                                    </div>
                                    <div class="form-group  col-sm-6">
                                        <label>联系电话：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">
                                        <span style="color:red;">*</span>


                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>司机状态：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">
                                        <span style="color:red;">*</span>

                                    </div>
                                    <div class="form-group  col-sm-6">
                                        <label>身份证号：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">
                                        <span style="color:red;">&nbsp</span>


                                    </div>
                                </div>

                                <br>
                                <div class="row" align="center">
                                    <div class="form-group  col-sm-12">
                                        <label>籍贯信息：</label>
                                        <input type="text" class="form-control " style="width: 73%"
                                               placeholder="">
                                        <span style="color:red;">&nbsp</span>


                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">
                                    <div class="form-group  col-sm-12">
                                        <label>当前住址：</label>
                                        <input type="text" class="form-control " style="width:73%"
                                               placeholder="">
                                        <span style="color:red;">&nbsp</span>


                                    </div>
                                </div>


                            </form>
                        </fieldset>
                        <br>
                        <fieldset style="border-color:#99b2ff">
                            <legend style="color: #99b2ff"> 认证信息</legend>
                            <form class="form-inline ">
                                <div class="row " align="center">


                                    <div style="left:2% ;" class="form-group col-sm-6">
                                        <label>准驾车型：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">

                                    </div>
                                    <div style="left: 1.5%;" class="form-group  col-sm-6">
                                        <label>驾驶证编号：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">


                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>驾驶证签发日期：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">

                                    </div>
                                    <div class="form-group  col-sm-6">
                                        <label>驾驶证失效日期：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">


                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>驾驶证年审日期：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">

                                    </div>
                                    <div style="left:1% ;" class="form-group  col-sm-6">
                                        <label>从业资格证号：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">


                                    </div>
                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div class="form-group col-sm-6">
                                        <label>资格证签发日期：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">

                                    </div>

                                    <div class="form-group  col-sm-6">
                                        <label>资格证失效日期：</label>
                                        <input type="text" class="form-control " style="width: 43%"
                                               placeholder="">


                                    </div>
                                </div>
                                <br>


                                <div class="row" align="center">
                                    <input type="file" onchange="load_img()" style="display: none;" id="add_file"
                                           name="file" accept="image/*"/>


                                    <div style="left: 2%" class="form-group col-sm-2">
                                        <img id="add_driver_img" src="${pageContext.request.contextPath}/static/add_img.png"
                                             style="width: 80%;height: 80%;" onclick="add_img(id);">
                                    </div>
                                    <div style="left: 5%" class="form-group  col-sm-2">
                                        <img id="add_license_d_img" src="${pageContext.request.contextPath}/static/add_img.png"
                                             style="width: 80%;height: 80%;" onclick="add_img(id)">
                                    </div>

                                    <div style="left: 8%" class="form-group  col-sm-2">
                                        <img id="add_license_f_img" src="${pageContext.request.contextPath}/static/add_img.png"
                                             style="width: 80%;height: 80%;" onclick="add_img(id)">
                                    </div>
                                    <div style="left: 11%" class="form-group  col-sm-2">
                                        <img id="add_certificate_f_img" src="${pageContext.request.contextPath}/static/add_img.png"
                                             style="width: 80%;height: 80%;" onclick="add_img(id)">
                                    </div>
                                    <div style="left: 14%" class="form-group  col-sm-2">
                                        <img id="add_certificate_d_img" src="${pageContext.request.contextPath}/static/add_img.png"
                                             style="width: 80%;height: 80%;" onclick="add_img(id)">
                                    </div>


                                </div>
                                <br>
                                <div class="row" align="center">


                                    <div style="left: 2%" class="form-group col-sm-2">
                                        <span>司机照片</span>
                                    </div>
                                    <div style="left: 5%" class="form-group  col-sm-2">
                                        <span>驾驶证-正面</span>
                                    </div>

                                    <div style="left: 8%" class="form-group  col-sm-2">
                                        <span>驾驶证-背面</span>
                                    </div>
                                    <div style="left: 11%" class="form-group  col-sm-2">
                                        <span>从业资格证-正面</span>
                                    </div>
                                    <div style="left: 14%" class="form-group  col-sm-2">
                                        <span>从业资格证-背面</span>
                                    </div>


                                </div>
                            </form>
                        </fieldset>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="add_driver_form">保存</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

</div>




<%--修改司机信息模态层--%>
<!-- Modal -->
<div class="modal fade" id="update_driver_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div style="width:80% ;max-height: 500px;" class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title"  align="center">修改司机信息</h4>
            </div>
            <div class="modal-body  ">
                <div class="container-fluid">

                    <fieldset style="border-color:#99b2ff">
                        <form class="form-inline">
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>司机姓名：</label>
                                    <input type="text" class="form-control " style="width:43%"
                                           placeholder="">
                                    <span style="color:red;">*</span>
                                </div>

                                <div class="form-group  col-sm-6">
                                    <label>司机性别：</label>
                                    <select class="form-control" style="width: 43%">
                                    </select>
                                    <span style="color:red;">&nbsp</span>


                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>司机工种：</label>
                                    <div class="form-group" style="width: 43%;">
                                        <div class="input-group">
                                            <input type="text" readonly class="form-control" >
                                            <div class="input-group-addon btn btn-primary "
                                                 id="update_open_work_type_modal"
                                                 style="background-color:#99b2ff ; width: 30%">选择
                                            </div>
                                        </div>
                                    </div>

                                    <span style="color:red;">*</span>
                                </div>

                                <div class="form-group col-sm-6">
                                    <label>司机班次：</label>
                                    <div class="form-group" style="width: 43%;">
                                        <div class="input-group">
                                            <input type="text" readonly class="form-control" >
                                            <div class="input-group-addon btn btn-primary " id="update_open_shift_modal"
                                                 style="background-color:#99b2ff ; width: 30%">选择
                                            </div>
                                        </div>
                                    </div>

                                    <span style="color:red;">*</span>
                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>所属站点：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">
                                    <span style="color:red;">*</span>

                                </div>
                                <div class="form-group  col-sm-6">
                                    <label>联系电话：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">
                                    <span style="color:red;">*</span>


                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>司机状态：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">
                                    <span style="color:red;">*</span>

                                </div>
                                <div class="form-group  col-sm-6">
                                    <label>身份证号：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">
                                    <span style="color:red;">&nbsp</span>


                                </div>
                            </div>

                            <br>
                            <div class="row" align="center">
                                <div class="form-group  col-sm-12">
                                    <label>籍贯信息：</label>
                                    <input type="text" class="form-control " style="width: 73%"
                                           placeholder="">
                                    <span style="color:red;">&nbsp</span>


                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">
                                <div class="form-group  col-sm-12">
                                    <label>当前住址：</label>
                                    <input type="text" class="form-control " style="width:73%"
                                           placeholder="">
                                    <span style="color:red;">&nbsp</span>


                                </div>
                            </div>


                        </form>
                    </fieldset>
                    <br>
                    <fieldset style="border-color:#99b2ff">
                        <legend style="color: #99b2ff"> 认证信息</legend>
                        <form class="form-inline ">
                            <div class="row " align="center">


                                <div style="left:2% ;" class="form-group col-sm-6">
                                    <label>准驾车型：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">

                                </div>
                                <div style="left: 1.5%;" class="form-group  col-sm-6">
                                    <label>驾驶证编号：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">


                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>驾驶证签发日期：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">

                                </div>
                                <div class="form-group  col-sm-6">
                                    <label>驾驶证失效日期：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">


                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>驾驶证年审日期：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">

                                </div>
                                <div style="left:1% ;" class="form-group  col-sm-6">
                                    <label>从业资格证号：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">


                                </div>
                            </div>
                            <br>
                            <div class="row" align="center">


                                <div class="form-group col-sm-6">
                                    <label>资格证签发日期：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">

                                </div>

                                <div class="form-group  col-sm-6">
                                    <label>资格证失效日期：</label>
                                    <input type="text" class="form-control " style="width: 43%"
                                           placeholder="">


                                </div>
                            </div>
                            <br>


                            <div class="row" align="center">
                                <input type="file" onchange="load_img()" style="display: none;" id="update_file"
                                       name="file" accept="image/*"/>


                                <div style="left: 2%" class="form-group col-sm-2">
                                    <img id="update_driver_img" src="/static/add_img.png"
                                         style="width: 80%;height: 80%;" onclick="add_img(id);">
                                </div>
                                <div style="left: 5%" class="form-group  col-sm-2">
                                    <img id="update_license_d_img" src="/static/add_img.png"
                                         style="width: 80%;height: 80%;" onclick="add_img(id)">
                                </div>

                                <div style="left: 8%" class="form-group  col-sm-2">
                                    <img id="update_license_f_img" src="/static/add_img.png"
                                         style="width: 80%;height: 80%;" onclick="add_img(id)">
                                </div>
                                <div style="left: 11%" class="form-group  col-sm-2">
                                    <img id="update_certificate_f_img" src="/static/add_img.png"
                                         style="width: 80%;height: 80%;" onclick="add_img(id)">
                                </div>
                                <div style="left: 14%" class="form-group  col-sm-2">
                                    <img id="update_certificate_d_img" src="/static/add_img.png"
                                         style="width: 80%;height: 80%;" onclick="add_img(id)">
                                </div>


                            </div>
                            <br>
                            <div class="row" align="center">


                                <div style="left: 2%" class="form-group col-sm-2">
                                    <span>司机照片</span>
                                </div>
                                <div style="left: 5%" class="form-group  col-sm-2">
                                    <span>驾驶证-正面</span>
                                </div>

                                <div style="left: 8%" class="form-group  col-sm-2">
                                    <span>驾驶证-背面</span>
                                </div>
                                <div style="left: 11%" class="form-group  col-sm-2">
                                    <span>从业资格证-正面</span>
                                </div>
                                <div style="left: 14%" class="form-group  col-sm-2">
                                    <span>从业资格证-背面</span>
                                </div>


                            </div>
                        </form>
                    </fieldset>


                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" id="update_driver_form">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

</div>










<%--司机工种模态层--%>

<div class="modal fade" id="work_type_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div style="width:40%; top: 20%; " class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <fieldset style="
                    border-color:#99b2ff">
                    <legend>选择工种</legend>
                    <form class="form-inline">
                        <table style="width: 80%" align="center" class="table ">
                            <div class="checkbox">
                                <tr>
                                    <td style="width: 10%;">
                                        <input type="checkbox" value="">
                                    </td>
                                    <td style="width: 25%;">
                                        工种名:程序猿
                                    </td>
                                    <td style="width: 10%;">
                                        <a class="glyphicon glyphicon-remove"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%;">
                                        <input type="checkbox" value="">
                                    </td>
                                    <td style="width: 25%;">
                                        工种名:攻城狮
                                    </td>
                                    <td style="width: 10%;">
                                        <a class="glyphicon glyphicon-remove"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%;">
                                        <input type="checkbox" value="">
                                    </td>
                                    <td style="width: 25%;">
                                        工种名:马奴
                                    </td>
                                    <td style="width: 10%;">
                                        <a class="glyphicon glyphicon-remove"></a>
                                    </td>
                                </tr>
                            </div>
                        </table>
                        <div align="center">

                            <button type="button" class="btn btn-success glyphicon glyphicon-plus"
                                    data-dismiss="modal">新增
                            </button>

                        </div>

                    </form>
                </fieldset>


                </form>
                </fieldset>


            </div>

        </div>
    </div>
</div>


<%--司机班次模态层--%>

<div class="modal fade" id="shift_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div style="width:40%; top: 20%; " class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <fieldset style="
                    border-color:#99b2ff">
                    <legend>选择班次</legend>
                    <form class="form-inline">
                        <table style="width: 80%" align="center" class="table ">
                            <div class="checkbox">
                                <tr>
                                    <td style="width: 10%;">
                                        <input type="checkbox" value="">
                                    </td>
                                    <td style="width: 25%;">
                                        班次:早
                                    </td>
                                    <td style="width: 10%;">
                                        <a class="glyphicon glyphicon-remove"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%;">
                                        <input type="checkbox" value="">
                                    </td>
                                    <td style="width: 25%;">
                                        班次:中
                                    </td>
                                    <td style="width: 10%;">
                                        <a class="glyphicon glyphicon-remove"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 10%;">
                                        <input type="checkbox" value="">
                                    </td>
                                    <td style="width: 25%;">
                                        班次:晚
                                    </td>
                                    <td style="width: 10%;">
                                        <a class="glyphicon glyphicon-remove"></a>
                                    </td>
                                </tr>
                            </div>
                        </table>
                        <div align="center">

                            <button type="button" class="btn btn-success glyphicon glyphicon-plus"
                                    data-dismiss="modal">新增
                            </button>

                        </div>

                    </form>
                </fieldset>


                </form>
                </fieldset>


            </div>

        </div>
    </div>
</div>

</body>
</html>

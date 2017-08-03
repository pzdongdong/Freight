<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/30
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        #listTable th{
            text-align: center;
            color: #ffffff;
            background-color: #337ab7;
        }
        #listTable td {
            text-align: center;
        }
        .rowColor{
            background-color: #e5eeff;
            border: 1px;
        }
        .borderDiv{
            border:1px solid #9d9d9d;
        }
        #addTable{
            border: 0px;
            margin-left: 6%;
            width: 82%;
        }
        #addTable td{
            text-align: right;
            width:20%;
            overflow: hidden;
            height: 50px;
            vertical-align: middle;
        }
        #addImgTable{
            width: 80%;
        }
        .btn-bcolor{
            color: #ffffff;
            background-color: #337ab7;
        }
        .input-group-addon:hover{
            color: #ffffff;
            /*#1b6d85*/
            background-color: #5bc0de;
        }
        .d{
        }
    </style>
</head>
<body>
<%--新增车辆--%>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="addCheLiangMode">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="text-align: center;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">新增车辆信息</h4>
            </div>
            <div class="borderDiv" style="margin: 8px">
                <form class=".form-horizontal">
                    <table id="addTable">
                        <tr >
                            <td >车辆类型:</td>
                            <td>
                                    <select class="form-control">
                                        <option selected="selected">请选择</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>

                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                            <td style="vertical-align: middle">车辆厂家:</td>
                            <td class="selectDiv">
                                <div class="input-group">
                                    <input type="text" class="form-control"  placeholder="" readonly>
                                    <div class="input-group-addon btn btn-bcolor" id="selectChangJiaBtn">选择</div>
                                </div>
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>车辆编号:</td>
                            <td>
                                <input type="text" class="form-control" placeholder="请输入编号">
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                            <td>车辆号码:</td>
                            <td>
                                <input type="text" class="form-control" placeholder="请输入号码">
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>车辆规格:</td>
                            <td>
                                <input type="text" class="form-control" placeholder="请输入车辆规格">
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                            <td>车辆重量:</td>
                            <td>
                                <input type="text" class="form-control" placeholder="请输入车辆类型">
                            </td>
                            <td style="width: 2%">
                            </td>
                        </tr>
                        <tr>
                            <td>车辆状态:</td>
                            <td>
                                <select class="form-control">
                                    <option selected="selected"></option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                            <td>车辆性质:</td>
                            <td>
                                <select class="form-control">
                                    <option selected="selected">请选择</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>RFID卡号:</td>
                            <td>
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="" readonly>
                                    <div class="input-group-addon btn btn-bcolor">选择</div>
                                </div>
                            </td>
                            <td style="width: 2%">
                            </td>
                            <td>归属站点:</td>
                            <td>
                                <select class="form-control">
                                    <option selected="selected">请选择</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </td>
                            <td style="width: 2%">
                                <div style="color: red"  align="left" >*
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>司机姓名:</td>
                            <td colspan="4">
                                <div class="input-group">
                                    <input type="text" class="form-control" readonly>
                                    <div class="input-group-addon btn btn-bcolor" id="addSijiBtn">选择</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>GPS信息:</td>
                            <td>
                                <input type="text" class="form-control" placeholder="请输入GPS信息">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="borderDiv" style="margin: 8px;padding: 5px;">
                <table id="addImgTable" width="60%" align="center" style="color: #9d9d9d;">
                    <tr>
                        <td align="center">
                            <input type="file" id='file'; onchange="c(this,'#show')" style="display: none;">
                            <img src="${pageContext.request.contextPath}/img/addImg.png" id='show' width="100px" height="100px" style="border:2px solid #8c8c8c;" ></td>
                        <td align="center">
                            <input type="file" id='file1'; onchange="c(this,'#show1')" style="display: none;">
                            <img src="${pageContext.request.contextPath}/img/addImg.png" id='show1' width="100px" height="100px" style="border:2px solid #8c8c8c;"></td>
                        <td align="center">
                            <input type="file" id='file2'; onchange="c(this,'#show2')" style="display: none;">
                            <img src="${pageContext.request.contextPath}/img/addImg.png" id='show2' width="100px" height="100px" style="border:2px solid #8c8c8c;" >
                        </td>
                    </tr>
                    <tr>
                        <td align="center">车辆外观</td>
                        <td align="center">驾驶证-正面</td>
                        <td align="center">驾驶证-反面</td>
                    </tr>
                <script language="javascript">
                    $('#show').click(function () {
                            $('#file').click();
                    });
                    $('#show1').click(function () {
                        $('#file1').click();
                    });
                    $('#show2').click(function () {
                        $('#file2').click();
                    });
                    function c (obj,img) {
                        var r= new FileReader();
                        f=obj.files[0];
                        r.readAsDataURL(f);
                        r.onload=function  (e) {
                            $(img).attr("src",this.result);
//                        document.getElementById('show').src=this.result;
                        };
                    }
                </script>
                </table>
            </div>
            <div style="text-align: center; margin-bottom: 10px;">
                <button type="button" class="btn btn-primary" style="width: 100px;">保存</button>
                <button type="button" class="btn btn-default" style="width: 100px;" data-dismiss="modal">关闭</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%--选择厂家--%>
<div class="modal fade" tabindex="-1" role="dialog" id="addChangJia" style="margin-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" style="margin-left: 10%">选择厂家</h4>
            </div>
            <div class="modal-body">
                <div style="width: 50%;margin: 0 auto;">
                    <select class="form-control">
                        <option selected="selected">请选择</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">增加厂家</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%--选择司机--%>
<div class="modal fade" tabindex="-1" role="dialog" id="addSiJiMode" style="margin-top: 10%">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" style="margin-left: 10%">选择司机</h4>
            </div>
            <div class="modal-body">
                <div style="width: 50%;margin: 0 auto;">
                <select class="form-control">
                    <option selected="selected">请选择</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">增加司机</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="container" style="margin-top: 20px">
                <%--查询条件--%>
        <div class="borderDiv">
        <div class="row">
            <div class="col-xs-12">
                <form action="">
                <table class="table">
                    <tr>
                        <td align="right">车辆类型:</td>
                        <td>
                            <select class="form-control">
                                <option selected="selected">请选择</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </td>
                        <td align="right">车辆品牌:</td>
                        <td>
                            <select class="form-control">
                                <option selected="selected">请选择</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </td>
                        <td align="right">车辆状态:</td>
                        <td>
                            <select class="form-control">
                                <option selected="selected">请选择</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </td>
                        <td>
                            <input type="button" value="查询" class="btn btn-primary">
                        </td>
                        <td>
                            <input type="reset" value="重置" class="btn btn-primary">
                        </td>
                    </tr>
                    <tr>
                        <td align="right">车辆性质:</td>
                        <td>
                            <select class="form-control">
                                <option selected="selected">请选择</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </td>
                        <td align="right">车辆编号:</td>
                        <td>
                            <input type="text" class="form-control" id="inputEmail3" placeholder="请输入编号">
                        </td>
                        <td align="right">司机姓名:</td>
                        <td>
                            <input type="text" class="form-control" id="name" placeholder="请输入姓名">
                        </td>
                    </tr>
                    <tr></tr>
                </table>
                </form>
            </div>
            </div>
        </div><%--添加按钮--%>
                    <br/>
     <div class="borderDiv" >
        <div class="row" style="margin: 10px;">
            <div class="col-xs-2">
                <button id="addChe" class="btn btn-primary" style="width: 120px">
                    添加
                </button>
            </div>
        </div>
                    <br/>
                <%--list表格数据--%>
        <div class="row" style="margin: 0px 6px 6px 6px">
            <div class="col-xs-12">

            <table class="table table-bordered" id="listTable">
                <tr>
                    <th align="center">车辆编号</th>
                    <th>车牌号</th>
                    <th>卡状态</th>
                    <th>车辆类型</th>
                    <th>车辆规格</th>
                    <th>车辆状态</th>
                    <th>车辆性质</th>
                    <th>司机姓名</th>
                    <th>司机班次</th>
                </tr>
                <tr>
                    <td>车辆编号1</td>
                    <td>车牌号1</td>
                    <td>卡状态1</td>
                    <td>车辆类型1</td>
                    <td>车辆规格1</td>
                    <td>车辆状态1</td>
                    <td>车辆性质1</td>
                    <td>司机姓名1</td>
                    <td>司机班次1</td>
                </tr>
                <tr>
                    <td>车辆编号2</td>
                    <td>车牌号2</td>
                    <td>卡状态2</td>
                    <td>车辆类型2</td>
                    <td>车辆规格2</td>
                    <td>车辆状态2</td>
                    <td>车辆性质2</td>
                    <td>司机姓名2</td>
                    <td>司机班次2</td>
                </tr>
                <tr>
                    <td>车辆编号2</td>
                    <td>车牌号3</td>
                    <td>卡状态3</td>
                    <td>车辆类型3</td>
                    <td>车辆规格3</td>
                    <td>车辆状态3</td>
                    <td>车辆性质3</td>
                    <td>司机姓名3</td>
                    <td>司机班次3</td>
                </tr>
                <tr>
                    <td>车辆编号4</td>
                    <td>车牌号4</td>
                    <td>卡状态4</td>
                    <td>车辆类型4</td>
                    <td>车辆规格4</td>
                    <td>车辆状态4</td>
                    <td>车辆性质4</td>
                    <td>司机姓名4</td>
                    <td>司机班次4</td>
                </tr>
            </table>
            </div>
        </div>
    </div>

                <%--分页--%>
        <div class="row"></div>
    </div>
    <script type="text/javascript">
        //addChangJia
        $('#selectChangJiaBtn').click(function () {
            $('#addChangJia').modal();
        });
        //弹出选择司机模态层
        $('#addSijiBtn').click(function () {
            $('#addSiJiMode').modal();
        });
        //弹出增加模态框
        $('#addChe').click(function () {
            $('#addCheLiangMode').modal();
        });
        //隔行变色
        $(function () {
            var rows = $('#listTable tr');
            $.each(rows,function (index,itme) {
                if (index>1) {
                    if (index%2==0) {
                        $(itme).addClass("rowColor");
                    }
                }
            })
        })

</script>
</body>
</html>

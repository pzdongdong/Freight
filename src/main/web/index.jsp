<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Main</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap-theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/css/bootstrap-combind.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</head>
<body id="body">
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <p class="navbar-text">
                JCMES混凝土智能工厂1.0
            </p>
            <p class="navbar-text offset8">
                顺义站&nbsp;
                管理员&nbsp;|
                &nbsp;<a onclick="window.close()">退出系统</a>
            </p>
        </div>
    </div>
</nav>
<div class="container-fluid" style="height: 100%">
    <div class="span2">
        <div class="accordion" id="accordion2">
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo" >
                        车辆管理
                    </a>
                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                    <div class="accordion-inner" id="vehicleMenu">
                        <p><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" onclick="selectTabs(1)">车辆信息管理</a></p>
                        <p><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" onclick="selectTabs(2)">司机信息管理</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--以下body页面--%>
    <div class="span11" style="height: 1400px;" id="center">
    </div>
</div>


<script src="${pageContext.request.contextPath}/static/js/menutree.js"></script>
<script type="text/javascript">
    function selectTabs(no) {
        var url = '';
        if(no==1) {
            url = '${pageContext.request.contextPath}/toVehicle.controller';
        }else{
            url = '${pageContext.request.contextPath}/toDriver.controller';
        }
        if($("#center").find("iframe").length==0){
            var content = '<iframe src="'+url+'" frameborder="0" style="width: 100%;height: 100%" scrolling="auto"></iframe>';
            $("#center").append(content);
        }else{
            $("iframe").attr('src', url);
            $("#center").load;

        }
    }
</script>
</body>
</html>
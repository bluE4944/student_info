<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>管理主页</title>
    <script src="../../../static/js/main.js" type="text/javascript"></script>
    <link id="mainStyle" href="../../../static/css/default/PumaSideBar.css" rel="stylesheet" type="text/css"media="screen" />
    <link rel="stylesheet" href="../../../static/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../../css/prime.css"/>
</head>
<body>
    <div class="container-fluid ">
        <!-- 顶部 -->
    	<div class="row justify-content-between pageTop bg-light text-dark px-2" >
            <!-- 导航栏按钮 -->
        	<span id="botCallback2" ><i class="fa fa-list" style="font-size:24px"></i></span>
            <img src="../../../images/other/icon.png" height="50" width="50">
            <span id="username" >  ${user.user_name} </span>
    	</div>
        <!-- 主要iframe显示页面 -->
        <div class="row" >
        	<iframe class="col" frameborder="0" src="/views/welcome" id="mainIframe"></iframe>
        </div>
    </div>
    <!-- 引用js -->
    <script type="text/javascript" src="../../../js/prime.js"></script>
</body>
</html>

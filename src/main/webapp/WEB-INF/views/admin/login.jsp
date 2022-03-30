<%--
  Created by IntelliJ IDEA.
  User: 11940
  Date: 2020/6/26
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录-Login</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/login.css" />
</head >
<body background="../images/login/login_bg_05.jpg"
      style=" background-repeat: no-repeat;
		background-size: 100% 100%;
		background-attachment: fixed;" >
<div class="container text-nowrap text-center ">
    <div class="row align-items-center justify-content-end" id="login_outer_row" style="overflow:auto">
        <div>
            <img  height="50" width="300" src="../images/login/head.png">
            <div class="well mt-2">
                <blockquote class="blockquote text-center ">
                    <p class="mb-0">欢 迎 登 录</p>
                    <footer class="blockquote-footer">Welcome<cite title="Source Title">Login</cite></footer>
                </blockquote>
                <form  role="form" id="login_from" method="post" action="/login/adminLogin">
                    <div class="form-row">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroupPrepend1"><i class="fa fa-user" style="font-size:24px"></i></span>
                            </div>
                            <input type="text" class="form-control" id="account" aria-describedby="inputGroupPrepend1" name="user" placeholder="用户名\电话\邮箱" required>
                            <div class="invalid-feedback" id="phoneMsg">
                                请输入账号！
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroupPrepend2"><i class="fa fa-lock" style="font-size:24px" ></i></span>
                            </div>
                            <input type="password" class="form-control" id="password" aria-describedby="inputGroupPrepend2" name="user_password" placeholder="密码" required>
                            <div class="invalid-feedback" id="passwordMsg">
                                请输入密码！
                            </div>
                        </div>
                    </div>
                    <div class="input-group small text-center " id="box2">
                        <span class="input-group-addon" style="line-height: 40px">验证码：</span>
                        <input type="tel" class="form-control mr-2" id="YZM" placeholder="" />
                        <span><canvas id="canvas" width="100" height="40"></canvas></span>
                        <div class="invalid-feedback" id="YzmMsg">
                            请输入验证码！
                        </div>
                    </div>
                    <span style="color: cornflowerblue">${ Msg }</span>
                    <button type="submit"  class="btn btn-primary btn-block mt-1">登 录</button>
                </form>
                <div class="text-dark small mt-4">
                    <a href="/login/rePassword" class="text-dark">忘记密码?</a><span>&nbsp; | &nbsp;</span>
                    <a href="/login/help" class="text-dark ">帮助</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="../../js/login.js" ></script>
</body>
</html>

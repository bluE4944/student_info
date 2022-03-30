<%--
  Created by IntelliJ IDEA.
  User: 11940
  Date: 2020/6/26
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //清除Session
    request.getSession().invalidate();%>
<html>
<head>
    <title>index</title>
</head>
<body>
    <script>
        /**
         * navigator 对象包含有关浏览器的信息。
         * userAgent 返回由客户机发送服务器的 user-agent（用户代理） 头部的值。
         * @returns {boolean} true为PC端 false为手机端
         * @constructor
         */
        function IsPC() {
            var userAgentInfo = navigator.userAgent;
            var Agents = ["Android", "iPhone",
                "SymbianOS", "Windows Phone",
                "iPad", "iPod"];
            var flag = true;
            for (var v = 0; v < Agents.length; v++) {
                if (userAgentInfo.indexOf(Agents[v]) > 0) {
                    flag = false;
                    break;
                }
            }
            return flag;
        }

        //窗口加载时 做的事
        window.onload = function () {
            if(IsPC){
                window.location.href="login/adminIndex"
            }else {

            }
        }

    </script>
</body>
</html>

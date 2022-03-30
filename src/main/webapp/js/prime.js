
function autoDivHeight() { //函数：获取尺寸
    //获取浏览器窗口高度
    var winHeight = 0;
    if (window.innerHeight)
        winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
        winHeight = document.body.clientHeight;
    //通过深入Document内部对body进行检测，获取浏览器窗口高度
    if (document.documentElement && document.documentElement.clientHeight){
    	winHeight = document.documentElement.scrollHeight;
    }
    mainHeight = parseFloat(winHeight)-65;
    //DIV高度为浏览器窗口高度
    document.getElementById("mainIframe").style.height = mainHeight + "px";
}

//窗口改变时做的事
window.onresize=function (){
    autoDivHeight();//浏览器窗口发生变化时同时变化DIV高度
};

//窗口加载时 做的事
window.onload = function () {
	autoDivHeight();
};


//不知道是做什么的，反正删不得
        $(".botTheme").on("click",
 			function () {
     		var a = $(this).attr("theme");
     			$("#mainStyle").attr({
         		href: "static/css/" + a + "/PumaSideBar.css"
     		})
 		});

//根据用户名获取头像 默认使用 user.jpg
var username = "user";

//不知道是做什么的，反正删不得
$(".botTheme").on("click",
    function () {
        var a = $(this).attr("theme");
        $("#mainStyle").attr({
            href: "static/css/" + a + "/PumaSideBar.css"
        })
    });

$("#botCallback2").on("click",
    function () {
        //初始化用户名 ，测试用
        username="user";
        $.PumaSideBar({
                position: "left",
                label: username,
                movebody: true,
                avatar: "../images/user_img/"+username+".jpg",
                items: [{
                    fa: "fa-desktop",
                    text: "欢迎使用"
                },
                    {
                        fa: "fa-user",
                        text: " &nbsp;用户管理",
                        items: [{
                            fa: "fa-leaf",
                            text: "个人主页"
                        },
                            {
                                fa: "fa-list-ul",
                                text: "用户列表"
                            },
                            {
                                fa: "fa-flag",
                                text: "设置管理员"
                            },
                            {
                                fa: "fa-gears",
                                text: "更多设置"
                            }]
                    },
                    {
                        fa: "fa-group",
                        text: " 学生管理"
                    },
                    {
                        fa: "fa-address-card",
                        text: "教师管理"
                    },
                    {
                        fa: "fa-list-alt",
                        text: "课程管理"
                    },
                    {
                        fa: "fa-gear",
                        text: "系统设置"
                    },
                    {
                        fa: "fa-sign-out",
                        text: "退出登录"
                    }]
            },
            function (b, a) {
                if(b == "退出登录"){
                    window.location.href="/";
                }else {
                    //b 是点击的按钮名   a是退出
                    if (b != undefined) {
                        jumpView(b);
                        alert("You click: " + b );
                    }
                }
            })
    });

$("#btnTeacher").on("click",
    function () {
        //初始化用户名 ，测试用
        username="user";
        $.PumaSideBar({
                position: "left",
                label: username,
                movebody: true,
                avatar: "../images/user_img/"+username+".jpg",
                items: [{
                    fa: "fa-desktop",
                    text: "欢迎使用"
                },
                    {
                        fa: "fa-user",
                        text: " &nbsp;用户管理",
                        items: [{
                            fa: "fa-leaf",
                            text: "个人主页"
                        }, {
                                fa: "fa-gears",
                                text: "更多设置"
                            }]
                    },
                    {
                        fa: "fa-group",
                        text: " 成绩管理"
                    },
                    {
                        fa: "fa-sign-out",
                        text: "退出登录"
                    }]
            },
            function (b, a) {
                if(b == "退出登录"){
                    window.location.href="/";
                }else {
                    //b 是点击的按钮名   a是退出
                    if (b != undefined) {
                        jumpView(b);
                        alert("You click: " + b );
                    }
                }
            })
    });

$("#btnStudent").on("click",
    function () {
        //初始化用户名 ，测试用
        username="user";
        $.PumaSideBar({
                position: "left",
                label: username,
                movebody: true,
                avatar: "../images/user_img/"+username+".jpg",
                items: [{
                    fa: "fa-desktop",
                    text: "欢迎使用"
                },
                    {
                        fa: "fa-user",
                        text: " &nbsp;用户管理",
                        items: [{
                            fa: "fa-leaf",
                            text: "个人主页"
                        }, {
                            fa: "fa-gears",
                            text: "更多设置"
                        }]
                    },
                    {
                        fa: "fa-search",
                        text: " 成绩查询"
                    },
                    {
                        fa: "fa-sign-out",
                        text: "退出登录"
                    }]
            },
            function (b, a) {
                if(b == "退出登录"){
                    window.location.href="/";
                }else {
                    //b 是点击的按钮名   a是退出
                    if (b != undefined) {
                        jumpView(b);
                        alert("You click: " + b );
                    }
                }
            })
    })

function jumpView(str) {
    str = str.trim();
    var viewUrl ;
    switch (str) {
        case "学生管理":
            viewUrl = "/views/studentManager";
            break;
        case "欢迎使用":
            viewUrl = "/views/welcome";
            break;
        case "教师管理":
            viewUrl = "/views/teacherManager";
            break;
        case "系统管理":
            viewUrl = "/views/systemManager";
            break;
        default:
            break;
    }
    document.getElementById("mainIframe").src = viewUrl;
}

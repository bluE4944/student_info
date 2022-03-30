//验证码
var YZM ;
function autoDivHeight() { //函数：获取尺寸
    //获取浏览器窗口高度
    var winHeight = 0;
    if (window.innerHeight)
        winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
        winHeight = document.body.clientHeight;
    //通过深入Document内部对body进行检测，获取浏览器窗口高度
    if (document.documentElement && document.documentElement.clientHeight)
        winHeight = document.documentElement.scrollHeight;
    //DIV高度为浏览器窗口高度
    document.getElementById("login_outer_row").style.height = winHeight + "px";
}

//窗口改变时做的事
window.onresize=function (){
    autoDivHeight();//浏览器窗口发生变化时同时变化DIV高度
};

//窗口加载时 做的事
window.onload = function () {
	autoDivHeight();
	//测试用，懒得输入验证码
    //document.getElementById("YZM").value = YZM ;
};

/**
 * 控制登录表单的提交
 */
$("#login_from").submit(function () {
    //获取信息
    var account= document.getElementById("account").value;
    var yz = document.getElementById("YZM").value.trim().toUpperCase();

    if (account==undefined||account==""){
        //账户为空给出提示 并返回
        $("#account").addClass("is-invalid");
        //阻止表单提交
        return false;
    }else {
        //取消提示
        $("#account").removeClass("is-invalid");
    }

    if(account==undefined||account==""){
        //密码为空给出提示 并返回
        $("#password").addClass("is-invalid");
        //阻止表单提交
        return false;
    }else {
        //取消提示
        $("#password").removeClass("is-invalid");
    }
    // 先注释掉，方便登录
    if(yz==""){
        $("#YZM").addClass("is-invalid");
        //阻止表单提交
        return false;
    }
    if(YZM.trim()!=yz){
        $("#YZM").addClass("is-invalid");
        $("#YzmMsg").text("验证码错误！");
        document.getElementById("YZM").value="";
        drawPic();
        //阻止表单提交
        return false;
    }
    //用户输入的属性
    var user_property ;
    //邮箱正则表达式
    var emailReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    if(/^1[3456789]\d{9}/.test(account)){
        //是电话 以1开头 第二位是 3456789中一个的11位数字
        user_property = "user_phone";
    }else if(emailReg.test(account)){
        //是邮箱
        user_property = "user_email"
    }else {
        //最后只能是用户名了
        user_property = "user_name";
    }
    $("#account").attr("name",user_property);
});



/**********************----------------验证码---------------************************/

/**生成一个随机数**/
function randomNum(min,max){
    return Math.floor( Math.random()*(max-min)+min);
}
/**生成一个随机色**/
function randomColor(min,max){
    var r = randomNum(min,max);
    var g = randomNum(min,max);
    var b = randomNum(min,max);
    return "rgb("+r+","+g+","+b+")";
}
drawPic();
document.getElementById("canvas").onclick = function(e){
    e.preventDefault();
    drawPic();
};

/**绘制验证码图片**/
function drawPic(){
    //初始话验证码
    YZM = "";
    var canvas=document.getElementById("canvas");
    var width=canvas.width;
    var height=canvas.height;
    var ctx = canvas.getContext('2d');

    ctx.textBaseline = 'bottom';
    /**绘制背景色**/
    ctx.fillStyle = randomColor(180,240); //颜色若太深可能导致看不清
    ctx.fillRect(0,0,width,height);
    /**绘制文字**/
    var str = 'ABCEFGHJKLMNPQRSTWXY123456789';
    for(var i=0; i<4; i++){
        var txt = str[randomNum(0,str.length)];
        YZM += txt;
        ctx.fillStyle = randomColor(50,160);  //随机生成字体颜色
        ctx.font = randomNum(15,40)+'px SimHei'; //随机生成字体大小
        var x = 10+i*25;
        var y = randomNum(25,45);
        var deg = randomNum(-45, 45);
        //修改坐标原点和旋转角度
        ctx.translate(x,y);
        ctx.rotate(deg*Math.PI/180);
        ctx.fillText(txt, 0,0);
        //恢复坐标原点和旋转角度
        ctx.rotate(-deg*Math.PI/180);
        ctx.translate(-x,-y);
    }
    /**绘制干扰线**/
    for(var i=0; i<5; i++){
        ctx.strokeStyle = randomColor(40,180);
        ctx.beginPath();
        ctx.moveTo( randomNum(0,width), randomNum(0,height) );
        ctx.lineTo( randomNum(0,width), randomNum(0,height) );
        ctx.stroke();
    }
    /**绘制干扰点**/
    for(var i=0; i<80; i++){
        ctx.fillStyle = randomColor(0,255);
        ctx.beginPath();
        ctx.arc(randomNum(0,width),randomNum(0,height), 1, 0, 2*Math.PI);
        ctx.fill();
    }
}
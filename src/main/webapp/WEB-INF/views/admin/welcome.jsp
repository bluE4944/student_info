<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台</title>
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>



<ul id="myTab" class="nav nav-tabs">
    
    <li class="active"><a href="#home" data-toggle="tab">首页</a></li>
    

    
</ul>



<div id="myTabContent" class="tab-content">
   
   <div class="tab-pane fade in active" id="home">

   
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:400px"></div>
    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts-all.js"></script>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts图表
        var myChart = echarts.init(document.getElementById('main')); 
        
        var option = {
            tooltip: {
                show: true
            },
            legend: {
                data:['实际签到','应到']
            },
            xAxis : [
                {
                    type : 'category',
                    data : ["三月","四月","五月","六月"]
                }
            ],
            yAxis : [
                {
                    type : 'value'
                }
            ],
            series : [
                {
                    "name":"实际签到",
                    "type":"bar",
                    "data":[20, 30, 30, 20 ]
                },{
                    "name":"应到",
                    "type":"bar",
                    "data":[30, 40, 30, 40 ]
                }
            ]
        };

        // 为echarts对象加载数据 
        myChart.setOption(option); 
    </script>

    
   </div>
  


<!-----------------栏目管理------------------------------->  
    <div class="tab-pane fade" id="column">     
        <div class="row">
        <br>
        
        <div class="col-xs-3" id="myScrollspy">
            <ul class="well" data-spy="affix" data-offset-top="125">
                <li><a href="#column-1">添加栏目</a></li>
                <li><a href="#column-2">删除栏目</a></li>
            </ul>
        </div>
        
        <div class="col-xs-9">
            <h2 id="column-1">添加栏目</h2>
            <div style="width:800px;height:auto;margin-left: auto;margin-right: auto;margin-top:10px;margin-bottom:50px;background-color:#B0E0E6;padding:30px;">
            <div style="width:600px;height:auto;margin-left: auto;margin-right: auto;margin-top:50px;margin-bottom:50px;background-color:#F5F5DC;padding:30px;font-size:15px;font-family:Microsoft YaHei">
            <form>
            <input type="text" class="form-control" placeholder="请输入栏目名称"><br>
            <input type="submit" value="提交添加" class="btn btn-primary">
            </form>
            </div>
            </div>
            
            <h2 id="column-2">删除栏目</h2>            
            <div style="width:800px;height:auto;margin-left: auto;margin-right: auto;margin-top:10px;margin-bottom:50px;background-color:#B0E0E6;padding:30px;">
            <div style="width:600px;height:auto;margin-left: auto;margin-right: auto;margin-top:50px;margin-bottom:50px;background-color:#F5F5DC;padding:30px;font-size:15px;font-family:Microsoft YaHei">
            <form>
            <input type="text" class="form-control" placeholder="请输入栏目名称"><br>
            <input type="submit" value="提交添加" class="btn btn-primary">
            </form>
            </div>
            </div>
        </div>
        
        </div>
    </div>
    

   
   
   
   
<!-----------------------文章管理--------------------------->   
    <div class="tab-pane fade" id="article">
        <div class="row">
        <br>
        
        <div class="col-xs-3" id="myScrollspy">
            <ul class="well" data-spy="affix" data-offset-top="125">
                <li><a href="#article-1">添加文章</a></li>
                <li><a href="#article-2">删除文章</a></li>
            </ul>
        </div>
        
        <div class="col-xs-9">
            <h2 id="article-1">添加文章</h2>
            <div style="width:800px;height:auto;margin-left: auto;margin-right: auto;margin-top:10px;margin-bottom:50px;background-color:#B0E0E6;padding:30px;">
            <div style="width:600px;height:auto;margin-left: auto;margin-right: auto;margin-top:50px;margin-bottom:50px;background-color:#F5F5DC;padding:30px;font-size:15px;font-family:Microsoft YaHei">
            <form>
            <input type="text" class="form-control" placeholder="请输入文章名称"><br>
            <input type="submit" value="提交添加" class="btn btn-primary">
            </form>
            </div>
            </div>    
            
            <h2 id="article-2">删除文章</h2>        
            <div style="width:800px;height:auto;margin-left: auto;margin-right: auto;margin-top:10px;margin-bottom:50px;background-color:#B0E0E6;padding:30px;">
            <div style="width:600px;height:auto;margin-left: auto;margin-right: auto;margin-top:50px;margin-bottom:50px;background-color:#F5F5DC;padding:30px;font-size:15px;font-family:Microsoft YaHei">
            <form>
            <input type="text" class="form-control" placeholder="请输入栏目名称"><br>
            <input type="submit" value="提交添加" class="btn btn-primary">
            </form>
            </div>
            </div>
        </div>
        
        </div>
    </div>
    

   
   

<!------------------------用户管理----------------------------------->   
    <div class="tab-pane fade" id="user">
        <div class="row">
        <br>
        
        <div class="col-xs-3" id="myScrollspy">
            <ul class="well" data-spy="affix" data-offset-top="125">
                <li><a href="#user-1">添加用户</a></li>
                <li><a href="#user-2">删除用户</a></li>
            </ul>
        </div>
        
        <div class="col-xs-9">
            <h2 id="user-1">添加用户</h2>
            <div style="width:800px;height:auto;margin-left: auto;margin-right: auto;margin-top:10px;margin-bottom:50px;background-color:#B0E0E6;padding:30px;">
            <div style="width:600px;height:auto;margin-left: auto;margin-right: auto;margin-top:50px;margin-bottom:50px;background-color:#F5F5DC;padding:30px;font-size:15px;font-family:Microsoft YaHei">
            <form>
            <input type="text" class="form-control" placeholder="请输入用户名称"><br>
            <input type="submit" value="提交添加" class="btn btn-primary">
            </form>
            </div>
            </div>
            
            <h2 id="user-2">删除用户</h2>    
            <div style="width:800px;height:auto;margin-left: auto;margin-right: auto;margin-top:10px;margin-bottom:50px;background-color:#B0E0E6;padding:30px;">
            <div style="width:600px;height:auto;margin-left: auto;margin-right: auto;margin-top:50px;margin-bottom:50px;background-color:#F5F5DC;padding:30px;font-size:15px;font-family:Microsoft YaHei">
            <form>
            <input type="text" class="form-control" placeholder="请输入栏目名称"><br>
            <input type="submit" value="提交添加" class="btn btn-primary">
            </form>
            </div>
            </div>
        </div>
        
        </div>
    </div>
    



</div>
</body>
</html>
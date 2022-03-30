
/**
 * 当前页,初始化为1
 */
var pageNum = 1;

/**
 * 每页显示的数据条数
 */
var pageSize = 8;

/**
 * 总的记录条数，查询数据库得到的数据
 */
var totalRecord;

/**
 * 总页数，通过totalRecord 和pageSize计算可得
 */
var totalPage;
/**
 * 分页显示的最前面的页数
 * 如 1 、 2 、 3 、 4 、 5 start为1
 */
var start=1;

/**
 * 分页显示的最前面的页数
 * 如 1 、 2 、 3 、 4 、 5 end为1
 */
var end=5;

//请求的url
var url  = "/student/layPage";

//当前显示的页面
var current = "message";
//表格html容器
var pageData;

//当前页有多少条记录
var pageLength =8;

window.onload = function () {
	//窗口加载时 做的事
	postStudentLayPage();
};

//请求数据回来
function postStudentLayPage(){
	var json = {"pageNum":pageNum, "pageSize":pageSize};
	$.post(url,json,function (data) {
		//设置分页信息
		pageNum = data.pageNum;
		totalPage = data.totalPage;
		totalRecord = data.totalRecord;
		start = data.start;
		end = data.end;
		console.log("pageNum:"+pageNum,"totalPage:"+totalPage,"totalRecord:"+totalRecord,"start:"+start,"end:"+end);
		$("#layPage_div").html("");
		//创建换页a标签
		createLi();
		//创建表格
		createManagerTable(data);
	});
}

/**
 * 获得当前显示的页面
 * @param str
 */
function changeTopNav(str) {
	current = str;
	switch (str) {
		case "message":
			url = "/student/layPage";
			break;
		case "sign":
			url =  "/studentSign/layPage";
			break;
		case "hours":
			url =  "/Hours/layPage";
			break;
		default:
			alert("test");
			break;
	}
}

/**
 * 根据后端传来的数据，填充表格，并
 * @param data
 */
function createManagerTable(data){

	pageData = [];
	if(totalRecord%pageSize==0){
		//表示 没有多余的记录 （刚好每页都有 pageSize 条记录 ）
		 pageLength=pageSize;
	}else {
		//有多余的记录 （最后一个 比 pageSize 条记录少）
		if(pageNum==totalPage){
			//最后一页 显示的数据 为 总记录 取 每页正常显示记录 的余数
			pageLength=totalRecord%pageSize;
		}else{
			//不是最后一页，正常显示
			pageLength=pageSize;
		}
	}
	//构建数组的内容，每一行都是一条记录
	switch (current) {
		case "message":
			studentMessage(data);
			break;
		case "sign":
			studentSign(data);
			break;
		case "hours":
			studentHours(data);
			break;
		default:
			alert("test");
			break;
	}

	$("#totalMsg").text("共"+totalPage+"页"+" "+totalRecord+"条记录");
	//获得表格
	//清除表格内容
	document.getElementById("table").innerHTML = "";
	//构造表格
	for(var i = 0 ;i<pageLength;i++){
		$('#table').append(pageData[i]);
	}
}

/**
 * 把数据添加道html标签中，再加入到数组中。学生信息页面的
 * @constructor
 */
function studentMessage(data) {
	for(var i=0;i<pageLength;i++) {
		var msg = "<tr onclick='checkboxTrue(this)' >" +
			"<td class='align-self-center'> <input type=\"checkbox\"  student_id='" + data.list[i].student_id + "' id='check" + i + "' /></td>" +
			"<td>" + data.list[i].student_name + "</td>" +
			"<td>" + data.list[i].student_number + "</td>" +
			"<td>" + data.list[i].student_sex + "</td>" +
			"<td>" + data.list[i].student_birthday + "</td>" +
			"<td>" + "系别" + "</td>" +
			"<td><button type='button' onclick='' class='btn btn-outline-info pt-2 pb-1 px-2 ' data-toggle='modal' data-target='#messageModal'> <i class='fa fa-edit' style='font-size:24px'></i></button> </td>" +
			"</tr>";
		//添加到数组中
		pageData.push(msg);
	}
}

/**
 *	同上，学生签到页面的
 * @param data
 */
function studentSign(data) {

	for(var i=0;i<pageLength;i++) {
		var msg = "<tr onclick='checkboxTrue(this)' >" +
			"<td class='align-self-center'> <input type=\"checkbox\"  student_id='" + data.list[i].student_id + "' id='check" + i + "' /></td>" +
			"<td>" + data.list[i].student_name + "</td>" +
			"<td>" + data.list[i].student_number + "</td>" +
			"<td>" + data.list[i].student_sex + "</td>" +
			"<td>" + data.list[i].student_birthday + "</td>" +
			"<td>" + "系别" + "</td>" +
			"<td><button type='button' onclick='' class='btn btn-outline-info pt-2 pb-1 px-2'> <i class='fa fa-edit' style='font-size:24px'></i></button> </td>" +
			"</tr>";
		//添加到数组中
		pageData.push(msg);
	}
}

$("#studentSaveForm").submit(function () {
	alert("班级添加成功!");
	return false;
});

/**
 * 同上，学生课时页面的
 * @param data
 */
function studentHours(data) {
	var pageLength ;
	for(var i=0;i<pageLength;i++) {
		var msg = "<tr onclick='checkboxTrue(this)' class='bg-light' >" +
			"<td class='align-self-center'> <input type='checkbox'  student_id='" + data.list[i].student_id + "' id='check" + i + "' /></td>" +
			"<td>" + data.list[i].student_name + "</td>" +
			"<td>" + data.list[i].student_number + "</td>" +
			"<td>" + data.list[i].student_sex + "</td>" +
			"<td>" + data.list[i].student_birthday + "</td>" +
			"<td>" + "系别" + "</td>" +
			"<td><button type='button' onclick='' class='btn btn-outline-info pt-2 pb-1 px-2'> <i class='fa fa-edit' style='font-size:24px'></i></button> </td>" +
			"</tr>";
		//添加到数组中
		pageData.push(msg);
	}
}

/**
 * 创建分页链接，并设置点击事件
 */
function createLi() {
	//造个简单的分页按钮
	for (var i = start; i <= end; i++) {
		if(i==start){
			pageN ='<li class="page-item">\n' +
				'      <a class="page-link" href="#" aria-label="Previous">\n' +
				'        <span aria-hidden="true">&laquo;</span>\n' +
				'      </a>\n' +
				'    </li>';
			$('#layPage_div').append(pageN);
		}
		if(i==pageNum){
			var pageN = '<li class="page-item disabled"><a class="page-link" href="#" selectPage="' + i + '" > ' + i + ' </a></li>';
			$('#layPage_div').append(pageN);
		}else {
			var pageN = '<li class="page-item"><a class="page-link" href="#" selectPage="' + i + '" > ' + i + ' </a></li>';
			$('#layPage_div').append(pageN);
		}

		if(i==end){
			pageN = '<li class="page-item" >\n' +
				'      <a class="page-link" href="#" aria-label="Next">\n' +
				'        <span aria-hidden="true">&raquo;</span>\n' +
				'      </a>\n' +
				'    </li>';
			$('#layPage_div').append(pageN);
		}
	}
	//最后一页？
	var isLast = false;
	//第一页
	var isFirst = true;

	if (pageNum==totalPage){
		//最后一页 下一页按钮消失
		$("a[aria-label='Next']").fadeOut("slow");
		isLast = true;
	}else if (isLast&&pageNum<totalPage){
		//从最后一页离开 下一页按钮显示
		$("a[aria-label='Next']").fadeIn("slow");
		isLast = false;
	}
	if (pageNum==1){
		//第一页 同上
		$("a[aria-label='Previous']").fadeOut("slow");
		isFirst = true;
	}else if (isFirst&&pageNum!=1){
		//从第一页跳转走 同上
		$("a[aria-label='Previous']").fadeIn("slow");
		isFirst = false;
	}

	//显示选择页的内容
	$("#layPage_div li a").click(function () {
		var selectPage =$(this).attr('selectPage');
		//是否包含数字
		var patt1=new RegExp("[0-9]");
		if(!patt1.test(selectPage)){
			//不包含数字，前一页或下一页按钮
			if($(this).attr("aria-label") == "Previous"){
				//上一页
				pageNum = pageNum-1;
			}else if($(this).attr("aria-label") == "Next"){
				//下一页
				pageNum = pageNum+1;
			}
		}else {
			//包含数字 指哪跳哪
			pageNum = selectPage;
			//加载所有数据的表格
		}
		//请求数据
		postStudentLayPage();
	});
}


/**
 * 点击下拉菜单切换按钮的文字
 */
$("#selectType a").click(function(){
	$("#btnType").text($(this).text());
});

/**
 * 点击下拉菜单切换按钮的文字
 */
$("#selectDepartment a").click(function(){
	$("#btnDepartment").text($(this).text());
});


/**
 * 全选
 */
function checkAll() {
	//获取checkbox元素
	var box = document.getElementById("checkAll");
	var checkeId ;
	if(box.checked){
		//选中，则全选
		for(var i=0;i<pageLength;i++){
			checkeId = "check"+i;
			document.getElementById(checkeId).checked = true;
			$("#"+checkeId).parent().parent().attr("tag","selected");
			$("#"+checkeId).parent().parent().attr("class","table-primary");
		}
	}else {
		//取消选中，则取消全选
		for(var i=0;i<pageLength;i++){
			checkeId = "check"+i;
			document.getElementById(checkeId).checked = false;
			$("#"+checkeId).parent().parent().attr("tag","");
			$("#"+checkeId).parent().parent().removeAttr("class")
		}
	}
}

/**
 * 判断 obj 是否选中
 * @param obj
 */
function checkboxTrue(obj) {
	var chks = $("input[type='checkbox']",obj);
	var tag = $(obj).attr("tag");
	if(tag=="selected"){
		// 之前已选中，设置为未选中
		$(obj).attr("tag","");
		chks.prop("checked",false);
		$(obj).removeAttr("class")
	}else{
		// 之前未选中，设置为选中
		$(obj).attr("class","table-primary");
		$(obj).attr("tag","selected");
		chks.prop("checked",true);
	}
	//判断是否全部选中，如果全选 就自动勾上全选
	var box =true;
	var checkeId ;
	for(var i=0;i<pageLength;i++){
		checkeId = "check"+i;
		if(document.getElementById(checkeId).checked == false){
			box=false;
		}
	}
	document.getElementById("checkAll").checked = box;
}
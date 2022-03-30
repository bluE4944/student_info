<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">	
	<meta charset="UTF-8">
	<title>欢迎使用</title>
	<link rel="stylesheet" href="../static/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/prime.css" />
</head>
<body>
	<div class="container-lg ">
		<!-- 导航 -->
		<div class="row ml-1" >
			<ul class="nav nav-tabs" id="myTab" role="tablist">
			  <li class="nav-item" role="presentation" onclick="changeTopNav('message')">
			    <a class="nav-link active" id="message-tab" data-toggle="tab" href="#message" role="tab" aria-controls="message" aria-selected="true">学生信息</a>
			  </li>
			  <li class="nav-item" role="presentation" onclick="changeTopNav('sign')">
			    <a class="nav-link" id="sign-tab" data-toggle="tab" href="#sign"  role="tab" aria-controls="sign" aria-selected="false">学生签到</a>
			  </li>
			  <li class="nav-item" role="presentation" onclick="changeTopNav('hours')">
			    <a class="nav-link" id="hours-tab" data-toggle="tab" href="#hours" role="tab" aria-controls="hours" aria-selected="false">学生成绩</a>
			  </li>
			</ul>
		</div>
		<div class="tab-content" id="myTabContent">
			<!-- ----------------信息管理------------- -->
			<div class="tab-pane fade show active" id="message" role="tabpanel" aria-labelledby="message-tab">
				<div class="row justify-content-around mt-2 " >
					<div class="mt-5">
						<!-- Button trigger modal -->
						<button class="btn btn-info" data-toggle="modal" data-target="#messageModal">
						  添加信息
						</button>
						<!-- Modal -->
						<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
							<div class="modal-content ">
							  <div class="modal-header bg-light ">
								<h5 class="modal-title" id="exampleModalLabel">成绩管理---新增信息</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								  <span aria-hidden="true">&times;</span>
								</button>
							  </div>
								<form id="teacherSaveForm" method="post" action="/teacher/saveTeacher">
							  <div class="modal-body">
								<div class="form-row mt-4 mb-4 " >
									<div class="col mr-2 ">
										<div class="input-group">
											<div class="input-group-prepend">
											  <div class="input-group-text">姓名</div>
											</div>
											<input type="text" class="form-control" name="teacher_name" placeholder="">
										</div>
									</div>
								</div>
								  <div class="form-row mt-4 mb-4 " >
									  <div class="col mr-2">
										  <div class="input-group">
											  <div class="input-group-prepend">
												  <div class="input-group-text">编号</div>
											  </div>
											  <input type="text" class="form-control" name="teacher_id" placeholder="">
										  </div>
									  </div>
								  </div>
								  <div class="form-row mt-4 mb-4 " >
									  <div class="col mr-2">
										  <div class="input-group">
											  <div class="input-group-prepend">
												  <div class="input-group-text">电话</div>
											  </div>
											  <input type="text" class="form-control" name="teacher_phone" placeholder="">
										  </div>
									  </div>
								  </div>
								<div class="form-row mb-4" >
								  <div class="col mr-2">
									  <div class="input-group">
										  <div class="input-group-prepend">
											  <div class="input-group-text">邮箱</div>
										  </div>
										  <input type="text" class="form-control" name="teacher_email" placeholder="">
									  </div>
								  </div>
							  </div>
								  <div class="form-row mb-4" >
									  <div class="col mr-2">
										  <div class="input-group">
											  <div class="input-group-prepend">
												  <div class="input-group-text">出生日期</div>
											  </div>
											  <input type="date" class="form-control" name="teacher_birthday" placeholder="">
										  </div>
									  </div>
								  </div>
							  </div>
							  <div class="modal-footer" style="justify-content: center;">
								<button type="submit" class="btn btn-primary">保存 </button>
								<button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
							  </div>
								</form>
							</div>
						  </div>
						</div>
						<button class="btn btn-info">删除信息</button>
						<span class="bg-danger"> ${saveStudentMsg} </span>
					</div>
					<div class="col-4 mt-2">
						<div class="d-inline">
							<button class="btn btn-info dropdown-toggle" id="btnType" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">选择类型</button>
							<div class="dropdown-menu" id="selectType" aria-labelledby="btnType">
							  <a class="dropdown-item" href="#" >姓名</a>
							  <a class="dropdown-item" href="#" >学号</a>
							  <div role="separator" class="dropdown-divider"></div>
							  <a class="dropdown-item" href="#">年龄</a>
						</div>
						</div>
						<div class="d-inline">
							<button class="btn btn-outline-info dropdown-toggle" id="btnDepartment" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">选择系别</button>
							<div class="dropdown-menu" id="selectDepartment" aria-labelledby="btnDepartment">
							  <a class="dropdown-item" href="#">Action</a>
							  <a class="dropdown-item" href="#">Another action</a>
							  <a class="dropdown-item" href="#">Something else here</a>
							  <div role="separator" class="dropdown-divider"></div>
							  <a class="dropdown-item" href="#">Separated link</a>
						</div>
						</div>

						<div class="input-group">
						  <input type="text" class="form-control" placeholder="" aria-label="Recipient's username" aria-describedby="button-addon2">
						  <div class="input-group-append">
							<button class="btn btn-info" type="button" id="button-addon2">查 询</button>
						  </div>
						</div>
					</div>
				</div>
				<div class="row justify-content-center text-center text-nowrap">
					<table class="table col-9 table-hover shadow rounded" >
						<thead >
							<tr class="bg-light">
							  <th scope="col"><input type="checkbox" id="checkAll" onclick="checkAll()" /></th>
							  <th scope="col">姓名</th>
							  <th scope="col">学号</th>
							  <th scope="col">性别</th>
							  <th scope="col">出生日期</th>
							  <th scope="col">系别</th>
							  <th scope="col">操作</th>
							</tr>
						</thead>
						<tbody id="table">
						</tbody>
					 </table>

				</div>
				<div class="row align-items-end justify-content-center"  style="height: 50px;line-height: 60px">

					<div style=" ">
						<nav aria-label="Page navigation example">
							<ul class="pagination " id="layPage_div">
							</ul>
						</nav>
					</div>
					<span class="ml-3" id="totalMsg"></span>
				</div>
			</div>

			<div class="tab-pane fade" id="sign" role="tabpanel" aria-labelledby="sign-tab">
				<div class="row justify-content-around mt-2 " >
					<div class="mt-5">
						<button class="btn btn-info" data-toggle="modal" data-target="#messageModal">
							添加信息
						</button>
						<button class="btn btn-info">删除信息</button>
					</div>
					<div class="col-4 mt-2">
						<div class="d-inline">
							<button class="btn btn-info dropdown-toggle" id="btnType" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">选择类型</button>
							<div class="dropdown-menu" id="selectType" aria-labelledby="btnType">
								<a class="dropdown-item" href="#" >Action</a>
								<a class="dropdown-item" href="#" >Another action</a>
								<a class="dropdown-item" href="#" >Something else here</a>
								<div role="separator" class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Separated link</a>
							</div>
						</div>
						<div class="d-inline">
							<button class="btn btn-outline-info dropdown-toggle" id="btnDepartment" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">选择系别</button>
							<div class="dropdown-menu" id="selectDepartment" aria-labelledby="btnDepartment">
								<a class="dropdown-item" href="#">Action</a>
								<a class="dropdown-item" href="#">Another action</a>
								<a class="dropdown-item" href="#">Something else here</a>
								<div role="separator" class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Separated link</a>
							</div>
						</div>

						<div class="input-group">
							<input type="text" class="form-control" placeholder="" aria-label="Recipient's username" aria-describedby="button-addon2">
							<div class="input-group-append">
								<button class="btn btn-info" type="button" id="button-addon2">查 询</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row justify-content-center text-center text-nowrap">
					<table class="table col-9 " >
						<thead >
						<tr class="bg-light">
							<th scope="col"><input type="checkbox" id="checkAll" /></th>
							<th scope="col">班号</th>
							<th scope="col">名称</th>
							<th scope="col">系别</th>
							<th scope="col">老师</th>
							<th scope="col">操作</th>
						</tr>
						</thead>
						<tbody id="clazz_table">

						</tbody>
					</table>
				</div>
				<div class="row align-items-end justify-content-center"  style="height: 50px;">
					<span id="totalMsg"></span>
					<div style=" line-height: 50px">
						<nav aria-label="Page navigation example">
							<ul class="pagination " id="layPage_div">
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="hours" role="tabpanel" aria-labelledby="hours-tab">
				<div class="row bg-dark" style="height: 100px;"></div>
			</div>
		</div>
	</div>

	<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="../js/studentManager.js"></script>
</body>
</html>

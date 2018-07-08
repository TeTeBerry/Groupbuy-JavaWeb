<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bmob-min.js" type="text/javascript" charset="utf-8"></script>
<title>regist</title>


<style>
#logindiv {
	width: 500px;
	height: 350px;
	background: rgba(255, 255, 255, 0.5);
	margin: 0 auto;
	margin-top: 200px;
		border-radius: 25px;
}

#login {
	background: rgba(0, 0, 0, 0.5);
	width: 250px;
	height: 60px;
	float: left;
	text-align: center;
	line-height: 60px;
	border-top-left-radius: 25px;
}

#regist {
	width: 250px;
	height: 60px;
	float: left;
	text-align: center;
	line-height: 60px;
}
</style>
</head>
<body style="background-image: url(img/2.jpg);">

	<div id="logindiv">

		<div id="login">
			<a href="login.jsp"><h3 style="color: #000000">登录</h3></a>
		</div>
	
		<div id="regist">
			<h3 style="color: #FFFFFF">注册</h3>
		</div>
		<div style="padding: 100px 100px 10px;">
			<form class="bs-example bs-example-form" role="form" action="regist" method="post">
				<div class="input-group">
					<span class="input-group-addon">昵&nbsp&nbsp&nbsp称</span> <input name="name" id="name"
						type="text" class="form-control" placeholder="请输入昵称">
				</div>
				<span style="margin-left: 50px; color: red" id="info-name">请输入昵称</span>
				<br>
				<div class="input-group">
					<span class="input-group-addon">手机号</span> <input name="phone" id="phone"
						type="text" class="form-control" placeholder="请输入手机号码">

				</div>
				<span style="margin-left: 50px; color: red" id="info-username">请输入正确的手机号码</span>
				<br>
				<div class="input-group">
					<span class="input-group-addon">密&nbsp&nbsp&nbsp码</span> <input name="password" id="password"
						type="password" class="form-control" placeholder="请输入密码">
				</div>
				
				<span style="margin-left: 50px; color: red" id="info-password">请输入8位以上的密码</span>
				<br>
				<div class="input-group">
					<span class="input-group-addon">地&nbsp&nbsp&nbsp址</span> <input name="adress" id="adress"
						type="text" class="form-control" placeholder="填写地址">
				</div>
				
				
				<br>
				<button style="width: 300px;" id="but"  type="submit"
					class="btn btn-success btn-lg">注册</button>
			</form>
		</div>

	</div>


</body>
<script type="text/javascript">
	//验证内容是否合法
	$(document).ready(function() {

						//验证昵称是否为空
						$("#name").blur(
								function() {
									if ($("#name").val() != null
											&& $("#name").val() != "") {
										$("#info-name").html("&nbsp");
									} else {
										$("#info-username").html("请输入昵称");
									}

								});

						//验证手机号是否合法
						$("#phone")
								.blur(
										function() {
											var username = $("#phone").val();
											var pattern = /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/;

											if ((username.match(pattern))) {
												$("#info-username").html(
														"&nbsp");
											} else {
												$("#info-username").html(
														"手机号不正确");
											}

										});

						//验证密码是否安全
						$("#password").blur(function() {

							//验证密码是否和法
							var pass = $("#password").val();
							if(pass == null || pass == "") {
								$("#info-password").html("请输入8位以上的密码");
							
							} else {
								if(pass.length >= 8 ) {
									$("#info-password").html("&nbsp");
									
									
								} else {
									$("#info-password").html("密码要求8位以上");
									
								}
							}
							
							
						});
						
						
						
					});
	
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bmob-min.js" type="text/javascript" charset="utf-8"></script>
<title>regist</title>

<SCRIPT LANGUAGE="JAVASCRIPT">

function check(ctl){
  var contents = ctl.value ;
 
  if ((contents.indexOf(" ")!=-1) || (contents.indexOf("0")==0) || ((contents/contents)!=1) &&(contents != 0)){
   alert('对不起，您输入的价格的格式错误！'); 
  
  }
}

</SCRIPT>
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
			<a ><h3 style="color: #000000">充值中心</h3></a>
		</div>
	
		<div id="regist">
			<h3 style="color: #FFFFFF">注册</h3>
		</div>
		<div style="padding: 100px 100px 10px;">
			<form class="bs-example bs-example-form" role="form" action="updatausers" method="post">
		<input type="hidden" name="num" value="${loginUser.num}">
				<input type="hidden" name="name" value="${loginUser.name}">
					<input type="hidden" name="password" value="${loginUser.password}">
						<input type="hidden" name="phone" value="${loginUser.phone}">
							<input type="hidden" name="adress" value="${loginUser.adress}">
							<input type="hidden" name="money" value="${loginUser.money}">
				<br>
				<div class="input-group">
					<span class="input-group-addon">余&nbsp&nbsp&nbsp額:</span> 
					<span style="color: red">${loginUser.money}&nbsp&nbspRMB</span> 
				</div>	
				<br>
				<div class="input-group">
					<span class="input-group-addon">充值金額</span> <INPUT TYPE=TEXT SIZE=20 NAME="moneys" onBlur="check(this)"> <br><br>
				</div>
				<input style="width: 100px;" type="button" name="button1" id="button1" value="返回" onclick="history.go(-1)">
				<button style="width: 100px;" id="but"  type="submit"
					class="btn btn-success btn-lg">充值</button>
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
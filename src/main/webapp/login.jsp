<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<style>
#radio{

}
#logindiv {
	width: 500px;
	height: 300px;
	background: rgba(255, 255, 255, 0.5);
	margin: 0 auto;
	margin-top: 200px;
	border-radius: 25px;
}

#login {

	width: 250px;
	height: 60px;
	float: left;
	text-align: center;
	line-height: 60px;
}

#regist {
		background: rgba(0, 0, 0, 0.5);
	width: 250px;
	height: 60px;
	float: left;
	text-align: center;
	line-height: 60px;
	border-top-right-radius: 25px;
}
</style>
</head>
<body style="background-image: url(img/4.jpg);">

	<div id="logindiv">
		<div id="login">
			<h3 style="color: #FFFFFF">登录</h3>
		</div>
		<div id="regist">
			<a href="regist.jsp"><h3 style="color: #000000">注册</h3></a>
		</div>

		<div style="padding: 100px 100px 10px;">
			<form class="bs-example bs-example-form" role="form" action="login" method="post">
				<div class="input-group">
					<span class="input-group-addon">帐号</span> <input type="text"
						class="form-control" name="name" placeholder="请输入账号">
				</div>
				<br>
				<div class="input-group">
					<span class="input-group-addon">密码</span> <input type="password"
						class="form-control"  name="password" placeholder="请输入密码">
				</div>
				<br>
				   <div id="radio">
	     管理员: <input type="radio" name="radio1" value="管理员"/>
	     会    员:<input type="radio" checked="checked" name="radio1" value="会员"/><br>
	    </div>
				<button style="width: 300px;"  type="submit"
					class="btn btn-success btn-lg">登录</button>
			</form>
		</div>

	</div>
</body>
</html>
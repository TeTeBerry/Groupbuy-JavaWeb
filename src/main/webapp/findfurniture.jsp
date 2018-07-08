<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="head.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CATE</title>

<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<style type="text/css">
.container {
	margin: auto;
	padding: 0 18px;
	padding-top: 20px;
	background: #F6F6F6;
}

.mui-row {
	overflow: hidden;
	margin-bottom: 20px;
}

.mui-row .mui-col-xs-6 {
	width: 48%;
	background-color: #fff;
	border-radius: 4px;
	overflow: hidden;
}

.mui-row .mui-col-xs-6:nth-child(2) {
	margin-left: 4%;
}

#img {
	width: 400px;
	height: 270px;
}

#img img {
	width: 100%;
	height: 100%;
}
</style>

<script>
	/*  购物车 */
	$(function() {
		var price = $("#danjia").val();
		$('#funs').click(function() {
			if ($("#numb").val()<$("#number").val()+1) {
			if ($("#numb").val() > 1) {
				$('#total').val($("#numb").val() * price * 0.8);
				alert('应付款:' + $("#total").val() + 'RMB');
				$("#funs").prop("type", "submit");
			} else {
				$('#total').val($("#numb").val() * price);
				alert('应付款:' + $("#total").val() + 'RMB' );
				$("#funs").prop("type", "submit");

			}}else{
				alert('sorry,库存不够')			
			}

		});
	});
	/*  购买 */
	$(function() {
		var price = $("#danjia").val();
		var money = $("#ss").val();
		var moneys = $("#total").val();
		$('#fun').click(function() {
			if ($("#numb").val()<$("#number").val()+1) {
				
			
			if ($("#numb").val() > 1) {
				$('#total').val($("#numb").val() * price * 0.8);
				moneys = $("#numb").val() * price * 0.8;
				alert('应付款:' + moneys + 'RMB');
				if (moneys > money) {
					alert('余额不足,请充值');
				} else {
					alert('购买成功');
					$("#fun").prop("type", "submit");
				}
			} else {
				moneys = $("#numb").val() * price;
				$('#total').val($("#numb").val() * price);
				alert('应付款:' + moneys + 'RMB');
				if (moneys > money) {
					alert('余额不足,请充值');
				} else {
					alert('购买成功');
					$("#fun").prop("type", "submit");
				}
			}
			}else{
				alert('sorry,库存不够')
			}

		});
	});
	$(function() {
		$('#fun1').click(function() {
			alert('请先登录');

		});
	});
	$(function() {
		$('#fun2').click(function() {
			alert('请先登录');

		});
	});
</script>
</head>
<body style="margin: 0">
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath}/index.jsp">首页</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a
							href="${pageContext.request.contextPath}/furnitureListByStyle/1">欧式</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/furnitureListByStyle/2">古典</a>
						</li>
						<li><a
							href="${pageContext.request.contextPath}/furnitureListByStyle/3">中式</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search"
						action="${pageContext.request.contextPath}/like" method="POST">
						<div class="form-group">
							<input type="text" class="form-control" name="ss" />
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><c:if test="${not empty loginUser}">
								<a href="${pageContext.request.contextPath}/orders.jsp" style="color: red;float: right;">订单</a>	
					 <a href="${pageContext.request.contextPath}/shopcart.jsp" style="color: red;float: right;">购物车</a>	

							</c:if> <c:if test="${empty loginUser}">
								<a href="javascript:alert('请先登录')"
									style="color: red; float: right;">订单</a>
								<a href="javascript:alert('请先登录')"
									style="color: red; float: right;">购物车</a>

							</c:if></li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	</nav>
	<form action="${pageContext.request.contextPath}/buy" method="POST">
		<div class="container">
			<div class="mui-row mui-col-xs-12 mui-clearfix"
				style="float: left; margin-left: 20%;">
				<span class="mui-col-xs-6">
					<div class="img" id="pp">${findfurniture.picture}</div> <span
					style="color: red"><h3>凡购买两件及两件以上者,一律八折</h3></span>
					<p>
					<h5>${findfurniture.name}</h5>
					</p>
					<span><h5>数量:${findfurniture.number}件</h5></span>
					<p>
					<h4 style="color: red">￥${findfurniture.price}</h4>
					</p>
					<form>
						件数:<input type=text name="fnum" id="numb" value=1> <input
							type=button value="+"
							onClick="javascript:this.form.fnum.value++;"> <input
							type=button value="-"
							onClick="javascript:if(this.form.fnum.value>1) this.form.fnum.value--;">
					</form> <input type="hidden" id="ss" value="${loginUser.money}"> <input
					type="hidden" id="now" name="buytime" readonly="readonly">
					<input type="hidden" id="danjia" value="${findfurniture.price}">
					<input type="hidden" id="number" value="${findfurniture.number}">
					<input type="hidden" name="ownname" value="${loginUser.name}">
					<input type="hidden" name="fname" value="${findfurniture.name}">
					<input type="hidden" name="buynum" value="${findfurniture.id}">
					<input type="hidden" name="fpicture" >
					<br>
			总价:<input type="text" id="total"
					name="price" readonly="readonly" />RMB <br> <c:if
						test="${not empty loginUser}">
						<input type="button" name="buy" value="购买" id="fun"
							style="float: right;">
						<input type="button" name="buy" value="加入购物车" id="funs"
							style="float: right;">
					</c:if> <c:if test="${empty loginUser}">
						<input type="button" value="购买" id="fun1" style="float: right;">
						<input type="button" value="加入购物车" id="fun2" style="float: right;">
					</c:if>
				</span>
			</div>

		</div>
	</form>
</body>
</html>
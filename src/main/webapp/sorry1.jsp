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

.col-md-4{

width:233px;

height:130px;


}
.col-md-4 img {
	width:100%;height:100%;
}

</style>
</head>
<body style="margin: 0">
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">首页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="${pageContext.request.contextPath}/furnitureListByStyle/1">欧式</a>
						</li>
						<li>
							 <a href="${pageContext.request.contextPath}/furnitureListByStyle/2">古典</a>
						</li>
						<li>
							 <a href="${pageContext.request.contextPath}/furnitureListByStyle/3">中式</a>
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
					  				
					</c:if>
					<c:if test="${empty loginUser}">
					 <a href="javascript:alert('请先登录')" style="color: red;float: right;">订单</a>	
					 <a href="javascript:alert('请先登录')" style="color: red;float: right;">购物车</a>
										
					</c:if>				
						</li>					
					</ul>
				</div>			
			</nav>
		<h1>	余额不足,请充值!!</h1><a href="${pageContext.request.contextPath}/recharge.jsp" style="float:right;">充值</a><a href="${pageContext.request.contextPath}/shopcart.jsp" style="float:right;" >返回上一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			
</body>
</html>
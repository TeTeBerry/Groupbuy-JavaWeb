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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css" media="all" />
<style type="text/css">
#cc{
width: 100px;
height: 100px;

}

#cc img{
height: 100%;
width: 100%;
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
			
				<div class="my_orderlist" style="min-height: 336px;">
				
				
				<table class="layui-table">
					<colgroup>
						<col width="15%">						
						<col width="20%">
						<col width="20%">
						<col width="20%">
						<col >
					</colgroup>
					<thead>
						<tr>
							<th>商品图片</th>
							<th>商品名</th>							
							<th>购买时间</th>
							<th>总价钱</th>
							<th>数量</th>
							<th>地址</th><th>操作</th>
							
						</tr>
					</thead>
					<tbody class="">
					
					<c:if test="${not empty orders}">
					<c:forEach items="${orders}" var="Order">								
						<tr>		
							<td id = "cc">${Order.fpicture}</td>							
							<td> ${Order.fname}</td>		
							<td>${Order.buytime}</td>
							<td>${Order.price}</td>				
								<td id = "ccc">${Order.fnum}</td>
								<td>${loginUser.adress}</td>	
						<td><a href="${pageContext.request.contextPath}/delorder/${Order.id}">删除</a></td>
		          								
							
						</tr>
					</c:forEach>	
								
					</c:if>
					
					</tbody>
				</table>
<c:if test="${empty orders}">
					<h1 style="color: red;">无订单</h1>
					<a href="javascript:history.back(-1)" style="float:right;" >返回上一页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</c:if>
			</div>
</body>
</html>
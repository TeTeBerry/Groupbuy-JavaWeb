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
.item img{
width:100%;height:100%;
 margin:0 auto;
}

.col-md-4{

width:233px;

height:130px;

 margin:0 auto;
}
.col-md-4 img {
	width:100%;height:100%;
	 margin:0 auto;
}

</style>
</head>
<body style="margin: 0">
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="index.jsp">首页</a>
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
			<div class="jumbotron" >
			<div class="carousel slide" id="carousel-746202">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-746202">
					</li>
					<li data-slide-to="1" data-target="#carousel-746202">
					</li>
					<li data-slide-to="2" data-target="#carousel-746202">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<a href="${pageContext.request.contextPath}/findfurniture/45"><img alt="" src="img/1.png" /></a>
						 <div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div> 
					</div>
					<div class="item">
					<a href="${pageContext.request.contextPath}/findfurniture/46"><img alt="" src="img/2.png" /></a>	
					 <div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div> 
					</div>
					<div class="item">
					<a href="${pageContext.request.contextPath}/findfurniture/47">	<img alt="" src="img/3.png" /></a>
						 <div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div> 
					</div>
				</div> <a class="left carousel-control" href="#carousel-746202" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-746202" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		
	</div>
	<div class="row clearfix" >
		<c:forEach items="${furnitures}" var="furnitureListByStyle" begin="3" end="7" >
             <div class="mui-row mui-col-xs-12 mui-clearfix" style="float: left;">
                 <span class="mui-col-xs-6">
                     <div class="col-md-4"><a href="${pageContext.request.contextPath}/findfurniture/${furnitureListByStyle.id}"> ${furnitureListByStyle.picture}</a></div>  
                     <p><h5>${furnitureListByStyle.name}</h5> </p>
                     <p> <h4 style="color: red">￥${furnitureListByStyle.price}</h4> </p>
                 </span>
             </div>
            </c:forEach>
	
	</div>
</div>
</body>
</html>
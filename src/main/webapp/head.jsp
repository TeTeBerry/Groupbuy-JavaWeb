<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
<html>
<head>
<meta charset="utf-8" />
<title></title>
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
.navBar {
	position: fixed;
}

#top {
	position: fixed;
	right: 1%;
	bottom: 5%;
}

</style>
</head>


<body >
	<a name="top"></a>
	<div id="top">
		<a href="#top" title="回到顶部"> <img alt="top" src="img/top.jpg"></a>
	</div>

	<div class="row clearfix " >
		<div  class="col-md-12 column" >
		
			<nav class="navbar navbar-default navbar-inverse" role="navigation"> 
			
				<div  align="center"> <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"> <span style="color: red; "><h1> 家居团购网</h1></span></a> 
			
</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
			

				<ul class="nav navbar-nav navbar-right">
					
					<c:if test="${not empty loginUser}">
					<li><a href="${pageContext.request.contextPath}/publishSkip.jsp" style="float:right; ">欢迎:${loginUser.name}</a></li>
							<li><a href="${pageContext.request.contextPath}/publishSkip.jsp"style="float:right; ">个人中心</a></li>
							
						<li><a href="${pageContext.request.contextPath}/recharge.jsp"style="float:right; ">充值</a></li>
				
				
						<li><a href="${pageContext.request.contextPath}/logoutServlet" style="float:right; color: red">注销</a></li>		
					</c:if>
					
					<c:if test="${empty loginUser}">
						<li><a href="${pageContext.request.contextPath}/login.jsp">登录</a></li>
						<li><a href="${pageContext.request.contextPath}/regist.jsp">注册</a>
					</c:if>

				</ul>
			</div>

			</nav>
		</div>
	</div>

</body>
</html>

<script type="text/javascript">
	
</script>
</body>
</html>
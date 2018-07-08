<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="head.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>家具列表</h2>
<table width="100%" border="1">
	<thead>
		<tr>
		<td>编号</td>
		<td>名字</td>		
		<td>手机号</td>
		<td>地址</td>
		<td>余额</td>
		<td>操作</td>
	
		</tr>
	</thead>
	<c:forEach items="${allUser}" var="alluser">
		<tr>
			<td>${alluser.num}</td>
			<td>${alluser.name}</td>
			<td>${alluser.phone}</td>
			<td>${alluser.adress}</td>
		    <td>${alluser.money}</td>
		   <td><a href="${pageContext.request.contextPath}/userdel/${alluser.num}">删除</a></td>
		</tr>
	</c:forEach>
</table>
<a href="${pageContext.request.contextPath}/furniturelist.jsp">返回上一页</a>
</body>
</html>
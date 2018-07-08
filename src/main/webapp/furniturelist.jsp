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
<a href="${pageContext.request.contextPath}/addfurniture.jsp">添加商品</a>
<br>
<a href="${pageContext.request.contextPath}/userlist.jsp">会员管理</a>
<table width="100%" border="1">
	<thead>
		<tr>
		<td>编号</td>
		<td>名字</td>		
		<td>类型</td>
		<td>详情</td>
		<td>价格</td>
		<td>数量</td>
		<td>操作</td>
		<td>下架</td>
		</tr>
	</thead>
	<c:forEach items="${furnitures}" var="furniture">
		<tr>
			<td>${furniture.id}</td>
			<td>${furniture.name}</td>
			<td>${furniture.style}</td>
			<td>${furniture.details}</td>
		    <td>${furniture.price}</td>
			<td>${furniture.number}</td>
		<td><a href="${pageContext.request.contextPath}/updatafurniture/${furniture.id}">修改</a></td>
		   <td><a href="${pageContext.request.contextPath}/furnituredel/${furniture.id}">下架</a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
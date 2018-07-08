<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<SCRIPT LANGUAGE="JAVASCRIPT">

function check(ctl){
  var contents = ctl.value ;
 
  if ((contents.indexOf(" ")!=-1) || (contents.indexOf("0")==0) || ((contents/contents)!=1) &&(contents != 0)){
   alert('对不起，您输入的价格的格式错误！'); 
  
  }
}

</SCRIPT>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/addfurniture" method="POST">
名字:<input type="text" name="name"><br><br>
		风格:<select name="style">
    <option value="欧式">欧式</option>
    <option value="古典">古典</option>
    <option value="中式">中式</option> 
  </select><br><br>
		数量:<input type="text" name="number" onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/"><br><br>
			价格:<INPUT TYPE=TEXT SIZE=20 NAME="price" onBlur="check(this)"> <br><br>
				详情:<input type="text" name="details" style="height: 50px;width: 100%;"><br><br>
				
	<!-- 加载编辑器的容器-->
			<textarea id="container" name="picture"
				style="width: 100%; height: 100%; margin: 0 auto;"></textarea>
				
				<input type="submit" value="上架">&nbsp&nbsp<a href="${pageContext.request.contextPath}/furniturelist.jsp">返回</a>
				</form>
</body>


<script type="text/javascript">


var ue = UE.getEditor("container");

	
</script>
</html>
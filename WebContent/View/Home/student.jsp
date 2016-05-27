<%@page import="Model.StuInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function goExamController(){
		window.location.href="../../goExamController";
	}
</script>
<title>学生主页</title>
</head>
<body>
	<h2>学生基本信息</h2><hr>
	<%
		StuInfo student = (StuInfo)request.getAttribute("StuInfo");
		String StuName = student.StuName;
		String StuNum = student.StuNum;
		String ClassName = student.ClassName;
		String Gender = student.Gender;
		String IdCard = student.IdCard;
	%>
	学号：<%= StuNum %><br>
	姓名：<%= StuName %><br>
	性别：<%= Gender %><br>
	身份证号码：<%= IdCard %><br>
	班级：<%= ClassName %><br>
	
	<input type="button" value="我要考试" onclick="goExamController()"/>
</body>
</html>
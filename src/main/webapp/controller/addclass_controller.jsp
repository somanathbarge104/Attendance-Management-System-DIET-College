<%@page import="com.project.addclass.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String class_name=request.getParameter("class_name");
String class_description=request.getParameter("class_description");
String teacher_id=request.getParameter("teacher_id");

Insert_Values obj_Insert_Values=new Insert_Values();
obj_Insert_Values.insert_values(class_name,class_description,teacher_id);

%>
<script type="text/javascript">
window.location.href="http://localhost:8080/Attenence_management_system/index.jsp";
</script>
</body>
</html>
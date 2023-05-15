<%@page import="com.project.addclass.MRead_Values"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.project.common.User_Bean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%
String id = request.getParameter("id");
User_Bean obj_User_Bean = new User_Bean();
obj_User_Bean.setId(id);
session.setAttribute("obj_User_Bean", obj_User_Bean);

String start_date = request.getParameter("start_date");
String end_date = request.getParameter("end_date");
MRead_Values obj_Read_Values = new MRead_Values();
List<User_Bean> list = obj_Read_Values.get_values(id, start_date, end_date);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance Report</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
    /* Custom styles */
    
    h2 {
        margin-top: 10px;
        margin-bottom: 10px;
        text-align: center;
        color: #337ab7;
    }
  
    
</style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Teacher Id: <%=session.getAttribute("id") %></a></li>
    </ul>
  </div>
</nav>
<div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <h2 class="text-center">Genrate Report</h2>
          </div>
          <div class="card-body">
<form action="controller/report_controller.jsp">
  <div class="form-group">

<label for="class_id">Subject Id:</label><input type="text" class="form-control" name="class_id" id="class_id" value="<%=obj_User_Bean.getId()%>" readonly/>
</div>
  <div class="form-group">
<label for="start_date">From Date:</label><input type="date" class="form-control" name="start_date" id="start_date" value="<%=start_date %>"/>
</div>
  <div class="form-group">
<label for="end_date">Till Date:</label><input type="date" class="form-control" name="end_date" id="end_date" value="<%=end_date %>"/>
</div>
   <div class="form-group text-center">
  <input type="submit" class="btn btn-info" value="Genrate Report">
</form>
<style>
.card:hover {
  box-shadow: 0 4px 10px 0 rgba(0,0,0,0.9);
  transform: scale(1.1);
  
}
</style>
</div>
</form>
</html>
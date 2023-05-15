<%@page import="com.project.common.User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<%
String id = request.getParameter("id");
User_Bean obj_User_Bean = new User_Bean();
obj_User_Bean.setId(id);
session.setAttribute("obj_User_Bean", obj_User_Bean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mark Attendance</title>
<!-- Bootstrap CSS -->
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
            <h2 class="text-center">Add Students</h2>
          </div>
          <div class="card-body">
<form action="controller/fillattendance_controller.jsp">
  <div class="form-group">
    <label for="class_id">Subject Id:</label>
    <input type="text" class="form-control" name="class_id" id="class_id" value="<%=obj_User_Bean.getId()%>" readonly/>
  </div>
  <div class="form-group">
  <label for="student_name">Student Name:</label>
        <input type="text" class="form-control" name="student_name" id="student_name"/>
    
  </div>
  <div class="form-group">
    <div class="row">
      <div class="col-md-6">
        <label for="student_rollno">Student Roll No:</label>
    <input type="text" class="form-control" name="student_rollno" id="student_rollno"/>
      </div>
      <div class="col-md-6">
        <label for="student_prn">Student PRN:</label>
        <input type="text" class="form-control" name="student_prn" id="student_prn"/>
      </div>
    </div>
  </div>
  <div class="form-group text-center">
  <input type="submit" class="btn btn-primary" value="Add Student">
</form>

<style>
.card:hover {
  box-shadow: 0 4px 10px 0 rgba(0,0,0,0.9);
  transform: scale(1.1);
  
}
</style>

</div>
<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi4+N" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </script>

</body>
</html>
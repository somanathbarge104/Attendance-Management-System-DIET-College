<%@page import="com.project.common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.project.addclass.Read_Values"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>Add Class</title>
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
<div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <h2 class="text-center">Create Classroom</h2>
          </div>
          <div class="card-body">
<form action="controller/addclass_controller.jsp">
 <div class="form-group">
<label for="teacher_id">Teacher Id:</label><input type="text" name="teacher_id" class="form-control" id="teacher_id" value="<%=session.getAttribute("id") %>" readonly/>
</div>
<div class="form-group">
<label for="class_name"></label>Class Name:<select id="class_name" name="class_name" class="form-control">
<option disabled selected>Select Class</option>
<option value="First Year">First Year</option>
<option value="Second Year">Second Year</option>
<option value="Third Year">Third Year</option>
<option value="Fourth Year">Fourth Year</option>
</select>
</div>
<div class="form-group">
<label for="class_description"></label>Subject Name:<input type="text" name="class_description" class="form-control" id="class_description" placeholder="Enter Subject Name" />
</div>
<div class="form-group text-center">
<input type="submit" class="btn btn-primary" value="Add Class">
</form>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi4+N" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </script>
  
<style>
.card:hover {
  box-shadow: 0 4px 10px 0 rgba(0,0,0,0.9);
  transform: scale(1.1);
  
}
</style>
</body>
</html>
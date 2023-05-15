<!DOCTYPE html>
<%@page import="com.project.common.User_Bean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.project.addclass.Read_Values"%>
<%
                    if(session == null){
                        response.sendRedirect("login.jsp");
                        System.out.println("session invalid");
                    }
                   
                    %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style type="text/css">
    .my-class {
  color: #842DCE;
}
    </style>
    <title>Welcome page</title>
    <!-- Bootstrap CDN stylesheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css">
</head>
<body>

<style>
        /* Custom styles */
        body {
            background-color: #f2f2f2;
        }
        h1 {
            margin-top: 20px;
            margin-bottom: 20px;
            text-align: center;
            color: #337ab7;
        }
        nav {
            background-color: #337ab7;
            color: #fff;
            padding: 10px;
            border-radius: 0;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
            font-weight: bold;
            font-size: 18px;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        nav li {
            float: left;
        }
        nav li a:hover {
            background-color: #4d4d4d;
            border-radius: 5px;
        }
        .container {
            margin-top: 50px;
        }
        .btn {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Dashboard</h1>
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="addclass.jsp">Add Class</a></li>
            <li><a href="#">Assessment</a></li>
            <li><a href="Logout">Logout</a></li>
        </ul>
    </nav>
                <%
                String teacher_id = (String) session.getAttribute("id");
                Read_Values obj_Read_Values = new Read_Values();
                List<User_Bean> list = obj_Read_Values.get_values(teacher_id);
                Iterator<User_Bean> it_list=list.iterator();
                %>
      <center><h3>Welcome, Prof. <%=session.getAttribute("name")%></h3><h6>(<%=session.getAttribute("udept") %>)</h6></center>
                
                <div class="row">
                    <% while(it_list.hasNext()){
                        User_Bean obj_User_Bean = it_list.next();
                    %>
                    <div class="col-md-4 mb-4">
  <div class="card border-secondary h-100">
    <div class="card-header bg-info text-white">
      <h3 class="card-title"><%= obj_User_Bean.getClass_name() %></h3>
    </div>
    <div class="card-body">
      <p class="card-text"><strong>Class ID:</strong> <%= obj_User_Bean.getId() %></p>
      <p class="card-text"><strong>Subject Name:</strong> <%= obj_User_Bean.getClass_description() %></p>
    </div>
    <div class="card-footer">     
    <a href="addstudent.jsp?id=<%= obj_User_Bean.getId() %>" class="btn btn-outline-primary">Add Student</a>
     <a href="fillattendance.jsp?id=<%= obj_User_Bean.getId() %>" class="btn btn-outline-primary">Fill Attendance</a>
      <a href="report.jsp?id=<%= obj_User_Bean.getId() %>" class="btn btn-outline-primary">Report</a>
    </div>
  </div>
</div>

<style>
.card:hover {
  box-shadow: 0 4px 10px 0 rgba(0,0,0,0.9);
  transform: scale(1.1);
  
}
</style>

    <% } %>
    </div>
    </div>
    </div>
    </div>
    <!-- Bootstrap CDN JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js"></script>
</body>
</html>

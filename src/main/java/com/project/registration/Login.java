package com.project.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String uemail=request.getParameter("username");		  
	       String upwd=request.getParameter("password");
	       HttpSession session =request.getSession();
	       RequestDispatcher dispatcher=null;
	       
	   			try {
					Class.forName("com.mysql.cj.jdbc.Driver");
				
	   			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance?useSSL=false","root","password");
	   			PreparedStatement ps=con.prepareStatement("select * from register where (uemail=? or id=?) and upwd=?");
	   			ps.setString(1,uemail);
	   			ps.setString(2,uemail);   			
	   			ps.setString(3, upwd);    
	   			ResultSet rs=ps.executeQuery();
	   			if(rs.next()) {
	   			session.setAttribute("name", rs.getString("uname"));
	   			session.setAttribute("id", rs.getString("id"));
	   			session.setAttribute("udept", rs.getString("udept"));	   			
	   			dispatcher=request.getRequestDispatcher("index.jsp");
	   			}
	    	   
	       
	       else {
	    	   request.setAttribute("status", "failed");
	  			dispatcher=request.getRequestDispatcher("login.jsp");

	       }
	       dispatcher.forward(request, response);
	      
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
}

package com.project.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.setContentType("Text/html");
				//PrintWriter out= response.getWriter();

				String uname=request.getParameter("name");
				String uemail=request.getParameter("email");
				String upwd=request.getParameter("pass");
				String umobile=request.getParameter("contact");
				String udept=request.getParameter("udept");
			    RequestDispatcher dispatcher=null;
				
				

				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","password");
					PreparedStatement ps=con.prepareStatement("insert into register(uname,uemail,upwd,umobile,udept) values(?,?,?,?,?)");

					ps.setString(1,uname);
					ps.setString(2,uemail);
					ps.setString(3, upwd);
					ps.setString(4, umobile);
					ps.setString(5, udept);
					
					
					int rowCount=ps.executeUpdate();
					dispatcher=request.getRequestDispatcher("registration.jsp");
					if(rowCount>0) {
						request.setAttribute("status","success");
					
					}
					else {
						request.setAttribute("status","failed");
						
					}
					dispatcher.forward(request, response);
					
				}
				
				catch(Exception e) {
		System.out.println(e);	}
			}
}

package com.project.addclass;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.project.common.DB_Connection;

public class AInsertValues {
	public void insert_values(String class_id,String student_rollno,String student_name,String student_prn)
	{
		 DB_Connection obj_DB_Connection=new DB_Connection();
		 Connection connection=obj_DB_Connection.get_connection();
		 PreparedStatement ps=null;
		try {
	String query="insert into students(class_id,student_rollno,student_name,student_prn) values(?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, class_id);
		 ps.setString(2, student_rollno);
		 ps.setString(3, student_name);
		 ps.setString(4, student_prn);
		 ps.executeUpdate();
		} catch (Exception e) {
		 System.err.println(e);
		}
	}
}

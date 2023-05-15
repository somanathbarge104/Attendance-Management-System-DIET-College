package com.project.addclass;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.project.common.DB_Connection;


public class Insert_Values {
	public void insert_values(String class_name,String class_description,String teacher_id)
	{
		 DB_Connection obj_DB_Connection=new DB_Connection();
		 Connection connection=obj_DB_Connection.get_connection();
		 PreparedStatement ps=null;
		try {
	String query="insert into classes(class_name,class_description,teacher_id) values(?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, class_name);
		 ps.setString(2, class_description);
		 ps.setString(3, teacher_id);
		 ps.executeUpdate();
		} catch (Exception e) {
		 System.err.println(e);
		}
	}

}

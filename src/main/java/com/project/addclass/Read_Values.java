package com.project.addclass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.project.common.DB_Connection;
import com.project.common.User_Bean;

public class Read_Values {
	public List<User_Bean> get_values(String teacher_id) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<User_Bean> list=new ArrayList<User_Bean>();
		try {
			String querry="select * from classes where teacher_id=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, teacher_id);
			rs=ps.executeQuery();
			while(rs.next()){
				User_Bean obj_User_Bean=new User_Bean();
				obj_User_Bean.setId(rs.getString("id"));	  
				obj_User_Bean.setClass_name(rs.getString("class_name"));
				obj_User_Bean.setClass_description(rs.getString("class_description"));
				obj_User_Bean.setTeacher_id(rs.getString("teacher_id"));
				list.add(obj_User_Bean);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
}

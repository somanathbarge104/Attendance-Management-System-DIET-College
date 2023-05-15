package com.project.addclass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.project.common.DB_Connection;
import com.project.common.User_Bean;

public class MRead_Values {
	public List<User_Bean> get_values(String class_id, String start_date, String end_date) {
	    DB_Connection obj_DB_Connection = new DB_Connection();
	    Connection connection = obj_DB_Connection.get_connection();
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    List<User_Bean> list = new ArrayList<User_Bean>();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    try {
	        String query = "SELECT students.sid, students.student_rollno, students.student_name, students.student_prn, COUNT(DISTINCT attendance.attendance_date) AS total_days, SUM(attendance.is_present) AS attendance " +
	                "FROM attendance " +
	                "INNER JOIN students ON attendance.student_id = students.sid " +
	                "WHERE students.class_id = ? AND attendance_date BETWEEN ? AND ? " +
	                "GROUP BY students.sid, students.student_rollno, students.student_name, students.student_prn " +
	                "ORDER BY students.student_rollno";
	        ps = connection.prepareStatement(query);
	        ps.setString(1, class_id);
	        ps.setString(2, start_date);
	        ps.setString(3, end_date);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            User_Bean obj_User_Bean = new User_Bean();
	            obj_User_Bean.setSid(rs.getInt("sid"));
	            System.out.println(rs.getInt("sid"));
	            
	            obj_User_Bean.setStudent_rollno(rs.getString("student_rollno"));
	            System.out.println(rs.getString("student_rollno"));
	            
	            obj_User_Bean.setStudent_name(rs.getString("student_name"));
	            System.out.println(rs.getString("student_name"));
	            
	            obj_User_Bean.setStudent_prn(rs.getString("student_prn"));
	            System.out.println(rs.getString("student_prn"));
	            
	            obj_User_Bean.setAttendance(rs.getInt("attendance"));
	            System.out.println(rs.getInt("attendance"));

	            obj_User_Bean.setTotal_days(rs.getInt("total_days"));
	            System.out.println(rs.getInt("total_days"));
	            
	            list.add(obj_User_Bean);
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    } finally {
	        try {
	            rs.close();
	            ps.close();
	            connection.close();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	    }
	    return list;
	}
}
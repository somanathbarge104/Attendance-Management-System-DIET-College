package com.project.addclass;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.project.common.DB_Connection;

public class MInsertValues {
    public void insert_values(String class_id, int student_id, String attendance_date, int is_present) {
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection connection = obj_DB_Connection.get_connection();
        PreparedStatement ps = null;
        try {
            String query = "INSERT INTO attendance (class_id, student_id, attendance_date, is_present) VALUES (?, ?, ?, ?)";
            ps = connection.prepareStatement(query);
            ps.setString(1, class_id);
            ps.setInt(2, student_id);
            ps.setString(3, attendance_date);
            ps.setInt(4, is_present);

            ps.executeUpdate();
            
            
            
        } catch (Exception e) {
            System.err.println(e);
        }
    }
}

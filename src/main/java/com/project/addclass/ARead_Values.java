package com.project.addclass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.project.common.DB_Connection;
import com.project.common.User_Bean;

public class ARead_Values {

    public static void main(String[] args) {
        Read_Values obj_Read_Values = new Read_Values();
        
        obj_Read_Values.get_values("");
    }

    public List<User_Bean> get_values(String class_id) {
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection connection = obj_DB_Connection.get_connection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<User_Bean> list = new ArrayList<User_Bean>();
        try {
            String querry = "select * from students where class_id=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, class_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                User_Bean obj_User_Bean = new User_Bean();
                obj_User_Bean.setSid(rs.getInt("sid"));
                obj_User_Bean.setStudent_rollno(rs.getString("student_rollno"));
                obj_User_Bean.setStudent_name(rs.getString("student_name"));
                obj_User_Bean.setStudent_prn(rs.getString("student_prn"));
                list.add(obj_User_Bean);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}

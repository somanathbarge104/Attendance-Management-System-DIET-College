package com.project.common;

public class User_Bean {
	private String id;
	private String class_name;
	private String class_description;
	private String teacher_id;
	
	private String class_id;
	private String student_rollno;
	private String student_name;
	private String student_prn;
	
	private int sid;
	private int student_id;
	private String attendance_date;
	private int is_present;
	
	private int attendance;
	private int total_present;
	private int total_absent;
	private int total_days;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getClass_description() {
		return class_description;
	}
	public void setClass_description(String class_description) {
		this.class_description = class_description;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getClass_id() {
		return class_id;
	}
	public void setClass_id(String class_id) {
		this.class_id = class_id;
	}
	public String getStudent_rollno() {
		return student_rollno;
	}
	public void setStudent_rollno(String student_rollno) {
		this.student_rollno = student_rollno;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_prn() {
		return student_prn;
	}
	public void setStudent_prn(String student_prn) {
		this.student_prn = student_prn;
	}
	
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public String getAttendance_date() {
		return attendance_date;
	}
	public void setAttendance_date(String attendance_date) {
		this.attendance_date = attendance_date;
	}
	public int getIs_present() {
		return is_present;
	}
	public void setIs_present(int is_present) {
		this.is_present = is_present;
	}
	public int getSid()  {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getAttendance() {
		return attendance;
	}
	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}
	public int getTotal_present() {
		return total_present;
	}
	public void setTotal_present(int total_present) {
		this.total_present = total_present;
	}
	public int getTotal_absent() {
		return total_absent;
	}
	public void setTotal_absent(int total_absent) {
		this.total_absent = total_absent;
	}
	public int getTotal_days() {
		return total_days;
	}
	public void setTotal_days(int total_days) {
		this.total_days = total_days;
	}
	
	
	
}
package com.example.hshiftmanagement.model;

public class EmpPersonalDetails {
    private int emp_id;
    private String name;
    private String phone_no;
    private String email;
    private String role;
    

    // Getters and setters
    public int getemp_id() { return emp_id; }
    public void setemp_id(int emp_id) { this.emp_id = emp_id; }

    public String getname() { return name; }
    public void setname(String name) { this.name = name; }
    
    public String getphone_no() { return phone_no; }
    public void setphone_no(String phone_no) { this.phone_no = phone_no; }
    
    public String getemail() { return email; }
    public void setemail(String email) { this.email = email; }

    public String getrole() { return role; }
    public void setrole(String role) { this.role = role; }
}

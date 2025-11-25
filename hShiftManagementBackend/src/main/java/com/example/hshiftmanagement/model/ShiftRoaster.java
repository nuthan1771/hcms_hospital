package com.example.hshiftmanagement.model;

public class ShiftRoaster {
    private int emp_id;
    private String emp_name;
    private String current_shift;
    private String date;
    private String month;
    
   

    // Getters and setters
    public int getemp_id() { return emp_id; }
    public void setemp_id(int emp_id) { this.emp_id = emp_id; }

    public String getemp_name() { return emp_name; }
    public void setemp_name(String emp_name) { this.emp_name = emp_name; }

    public String getcurrent_shift() { return current_shift; }
    public void setcurrent_shift(String current_shift) { this.current_shift = current_shift; }
    
    public String getdate() { return date; }
    public void setdate(String date) { this.date = date; }
    
    public String getmonth() { return month; }
    public void setmonth(String month) { this.month = month; }
}

package com.example.hshiftmanagement.model;

public class ShiftReport {
    private int emp_id;
    private String month;
    private int totalDaysWorked;
    private int nightShifts;
//    emp_id,emp_name,current_shift,date,month
    // Getters and setters
    public int getEmpId() { return emp_id; }
    public void setEmpId(int empId) { this.emp_id = empId; }

    public String getMonth() { return month; }
    public void setMonth(String month) { this.month = month; }

    public int getTotalDaysWorked() { return totalDaysWorked; }
    public void setTotalDaysWorked(int totalDaysWorked) { this.totalDaysWorked = totalDaysWorked; }

    public int getNightShifts() { return nightShifts; }
    public void setNightShifts(int nightShifts) { this.nightShifts = nightShifts; }
}




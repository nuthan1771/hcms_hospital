package com.example.hshiftmanagement.model;

public class SwapRequest {
    private String fromEmpId;
    private String fromEmpName;
    private String fromDate;
    private String toEmpId;
    private String toEmpName;
    private String toDate;

    // Getters
    public String getFromEmpId() {
        return fromEmpId;
    }

    public String getFromEmpName() {
        return fromEmpName;
    }

    public String getFromDate() {
        return fromDate;
    }

    public String getToEmpId() {
        return toEmpId;
    }

    public String getToEmpName() {
        return toEmpName;
    }

    public String getToDate() {
        return toDate;
    }

    // Setters
    public void setFromEmpId(String fromEmpId) {
        this.fromEmpId = fromEmpId;
    }

    public void setFromEmpName(String fromEmpName) {
        this.fromEmpName = fromEmpName;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public void setToEmpId(String toEmpId) {
        this.toEmpId = toEmpId;
    }

    public void setToEmpName(String toEmpName) {
        this.toEmpName = toEmpName;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }
}

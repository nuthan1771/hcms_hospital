package com.example.hshiftmanagement.controller;

import com.example.hshiftmanagement.model.*;
import com.example.hshiftmanagement.service.ShiftService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@CrossOrigin(origins = "*") // allow requests from any origin
@RestController
@RequestMapping("/shift")
public class ShiftController {

    @Autowired
    private ShiftService shiftService;

    @PostMapping("/employee")
    public String addEmployee(@RequestBody EmpPersonalDetails emp) {
        return shiftService.insertEmployee(emp);
    }

    @PostMapping("/roaster")
    public String addRoaster(@RequestBody ShiftRoaster roaster) {
        return shiftService.insertRoaster(roaster);
    }

    @GetMapping("/report")
    public List<Map<String, Object>> getMonthlyReport(@RequestParam String month) {
        return shiftService.getMonthlyReport(month);
    }
    
    @GetMapping("/swappable")
    public List<Map<String, Object>> getSwappableEmployees(
            @RequestParam String empId,
            @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") String date) {
        return shiftService.getSwappableEmployees(empId, date);
    }
    
    @PostMapping("/swap-employee")
    public Map<String, Object> swapEmployee(@RequestBody SwapRequest request) {
        return shiftService.swapEmployeesBetweenDates(
                request.getFromEmpId(),
                request.getFromEmpName(),
                request.getFromDate(),
                request.getToEmpId(),
                request.getToEmpName(),
                request.getToDate()
        );
    }
    
    @GetMapping("/shift-data")
    public List<Map<String, Object>> getAllShiftData() {
        return shiftService.getAllShiftData();
    }
    
    @GetMapping("/staff-directory")
    public List<Map<String, Object>> getStaffDirectory() {
        return shiftService.getStaffDirectory();
    }
}

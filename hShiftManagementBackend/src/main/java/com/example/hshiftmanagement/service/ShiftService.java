package com.example.hshiftmanagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.hshiftmanagement.model.*;

import jakarta.transaction.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ShiftService {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    @Transactional
    public String insertEmployee(EmpPersonalDetails emp) {
        String sql = "INSERT INTO emp_personal_details (emp_id,name,phone_no,email,role) VALUES (?, ?, ? , ? , ? )";
        jdbcTemplate.update(sql, emp.getemp_id(), emp.getname(), emp.getphone_no(),emp.getemail(),emp.getrole());
        return "Employee inserted successfully!";
    }
    @Transactional
    public String insertRoaster(ShiftRoaster roaster) {
        String sql = "INSERT INTO shift_roaster (emp_id,emp_name,current_shift,date,month) VALUES (?, ?, ? , ?, ?)";
        jdbcTemplate.update(sql, roaster.getemp_id(), roaster.getemp_name(), roaster.getcurrent_shift(), roaster.getdate(), roaster.getmonth());
        return "Shift roaster added!";
    }
  
    public List<Map<String, Object>> getMonthlyReport(String month) {
        String sql = """
            SELECT emp_id, emp_name, current_shift, COUNT(*) AS total_days
            FROM hshift_roaster
            WHERE month = ?
            GROUP BY emp_id, emp_name, current_shift
        """;

        return jdbcTemplate.queryForList(sql, month);
    }
    
    
    public List<Map<String, Object>> getSwappableEmployees(String empId, String shiftDate) {
    	String sql = """
    	SELECT e.emp_id, e.name AS emp_name
    	FROM hemp_personal_details e
    	JOIN hshift_roaster ei
    	ON ei.emp_id = ?
    	AND ei.date = ?
    	WHERE e.emp_id <> ?
    	AND NOT EXISTS (
    	SELECT 1
    	FROM hshift_roaster s
    	WHERE s.emp_id = e.emp_id
    	AND s.date = ?
    	)
    	AND NOT (
    	ei.current_shift = 1 AND EXISTS (
    	SELECT 1
    	FROM hshift_roaster s
    	WHERE s.emp_id = e.emp_id
    	AND s.date = DATE_SUB(?, INTERVAL 1 DAY)
    	AND s.current_shift = 3
    	)
    	)
    	AND NOT (
    	ei.current_shift = 3 AND EXISTS (
    	SELECT 1
    	FROM hshift_roaster s
    	WHERE s.emp_id = e.emp_id
    	AND s.date = DATE_ADD(?, INTERVAL 1 DAY)
    	AND s.current_shift = 1
    	)
    	)
    	""";

    	
    	return jdbcTemplate.queryForList(sql, empId, shiftDate, empId, shiftDate, shiftDate, shiftDate);
    	

    	}
    
//    @Transactional
    public Map<String, Object> swapEmployeesBetweenDates(
            String fromEmpId, String fromEmpName, String fromDate,
            String toEmpId, String toEmpName, String toDate) {

        // 1. Update the "from" date row to the "to" employee
        String updateFromSql = "UPDATE hshift_roaster " +
                "SET emp_id = ?, emp_name = ? " +
                "WHERE emp_id = ? AND emp_name = ? AND date = ?";
        int updatedFrom = jdbcTemplate.update(updateFromSql,
                toEmpId, toEmpName, fromEmpId, fromEmpName, fromDate);

        // 2. Update the "to" date row to the "from" employee
        String updateToSql = "UPDATE hshift_roaster " +
                "SET emp_id = ?, emp_name = ? " +
                "WHERE emp_id = ? AND emp_name = ? AND date = ?";
        int updatedTo = jdbcTemplate.update(updateToSql,
                fromEmpId, fromEmpName, toEmpId, toEmpName, toDate);

        // 3. Prepare result
        Map<String, Object> result = new HashMap<>();
        result.put("from_date", fromDate);
        result.put("to_date", toDate);
        result.put("from_employee_before", Map.of("emp_id", fromEmpId, "emp_name", fromEmpName));
        result.put("from_employee_after", Map.of("emp_id", toEmpId, "emp_name", toEmpName));
        result.put("to_employee_before", Map.of("emp_id", toEmpId, "emp_name", toEmpName));
        result.put("to_employee_after", Map.of("emp_id", fromEmpId, "emp_name", fromEmpName));
        result.put("updated_rows", updatedFrom + updatedTo);

        return result;
    }
    
    public List<Map<String, Object>> getAllShiftData() {
        String sql = "SELECT * FROM h_shift_management.hshift_roaster";
        return jdbcTemplate.queryForList(sql);
    }
    
    public List<Map<String, Object>> getStaffDirectory() {
        String sql = "SELECT emp_id, name, phone_no, email, role FROM h_shift_management.hemp_personal_details";
        return jdbcTemplate.queryForList(sql);
    }



 

}

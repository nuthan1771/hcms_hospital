-- Set the employee and date
SET @empId = 'EMP001';
SET @shiftDate = '2025-12-01';

-- Get swappable employees
SELECT e.emp_id, e.name AS emp_name
FROM hemp_personal_details e
JOIN hshift_roaster ei 
  ON ei.emp_id = @empId 
  AND ei.date = @shiftDate
WHERE e.emp_id <> @empId
  -- Employee must NOT be working on that day
  AND NOT EXISTS (
      SELECT 1 
      FROM hshift_roaster s
      WHERE s.emp_id = e.emp_id
        AND s.date = @shiftDate
  )
  -- Morning shift: candidate must NOT have night shift previous day
  AND NOT (
      ei.current_shift = 1 AND EXISTS (
          SELECT 1
          FROM hshift_roaster s
          WHERE s.emp_id = e.emp_id
            AND s.date = DATE_SUB(@shiftDate, INTERVAL 1 DAY)
            AND s.current_shift = 3
      )
  )
  -- Night shift: candidate must NOT have morning shift next day
  AND NOT (
      ei.current_shift = 3 AND EXISTS (
          SELECT 1
          FROM hshift_roaster s
          WHERE s.emp_id = e.emp_id
            AND s.date = DATE_ADD(@shiftDate, INTERVAL 1 DAY)
            AND s.current_shift = 1
      )
  );

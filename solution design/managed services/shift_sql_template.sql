CREATE DATABASE h_shift_management;
USE h_shift_management;

-- 1️⃣ Employee Personal Details
CREATE TABLE hemp_personal_details (
    emp_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) ,
    phone_no VARCHAR(15),
    email VARCHAR(100),
    role VARCHAR(50),
    project_id varchar(20)
);
drop table hemp_personal_details;
-- 2️⃣ Shift Roaster (daily or weekly shifts)
CREATE TABLE hshift_roaster (
    emp_id VARCHAR(20) ,
    emp_name VARCHAR(100),
    current_shift VARCHAR(20),
    date DATE,
    month INT,
    day int,
    PRIMARY KEY (emp_id, date),  -- each employee can have one shift per day
    FOREIGN KEY (emp_id) REFERENCES hemp_personal_details(emp_id)
);

-- 3️⃣ Shift Report (monthly summary)

CREATE TABLE hproject_details (
    project_id VARCHAR(20) PRIMARY KEY,
    project_name VARCHAR(100) ,
    project_manager_id varchar(20),
    FOREIGN KEY (project_manager_id) REFERENCES hemp_personal_details(emp_id)
    
);


CREATE TABLE hshift_report (
    emp_id VARCHAR(20),
    emp_name VARCHAR(100),
    shift_1_count INT DEFAULT 0,
    shift_2_count INT DEFAULT 0,
    shift_3_count INT DEFAULT 0,
    month INT,
    PRIMARY KEY (emp_id, month),
    FOREIGN KEY (emp_id) REFERENCES hemp_personal_details(emp_id)
);




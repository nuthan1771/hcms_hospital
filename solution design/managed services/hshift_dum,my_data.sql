-- December Full Month Shift Roster with Day Name
INSERT INTO hemp_personal_details 
(emp_id, name, phone_no, email, role, project_id)
VALUES
('EMP001', 'Anita Rao', '9876543210', 'anita.rao@hospital.com', 'L3', 'PROJ01'),
('EMP002', 'Divya Shetty', '9876543211', 'divya.shetty@hospital.com', 'L2', 'PROJ01'),
('EMP003', 'Neha Sharma', '9876543212', 'neha.sharma@hospital.com', 'L1', 'PROJ02'),
('EMP004', 'Kavya Nair', '9876543213', 'kavya.nair@hospital.com', 'L2', 'PROJ02'),
('EMP005', 'Riya Joseph', '9876543214', 'riya.joseph@hospital.com', 'L1', 'PROJ03');


INSERT INTO hproject_details 
(project_id, project_name, project_manager_id)
VALUES
('PROJ01', 'ICU - Intensive Care Unit', 'EMP001'),   -- L3 senior nurse
('PROJ02', 'General Ward', 'EMP004'),                -- L2 nurse
('PROJ03', 'Emergency Care', 'EMP002');              -- L2 nurse


INSERT INTO hshift_roaster (emp_id, emp_name, current_shift, date, month, day) VALUES
-- Week 1 : Dec 1–7 (Shift 1)
('EMP001','Anita Rao',1,'2025-12-01',12,'Monday'),
('EMP002','Divya Shetty',1,'2025-12-01',12,'Monday'),
('EMP003','Neha Sharma',1,'2025-12-01',12,'Monday'),
('EMP004','Kavya Nair',1,'2025-12-01',12,'Monday'),
('EMP005','Riya Joseph',1,'2025-12-01',12,'Monday'),

('EMP001','Anita Rao',1,'2025-12-02',12,'Tuesday'),
('EMP002','Divya Shetty',1,'2025-12-02',12,'Tuesday'),
('EMP003','Neha Sharma',1,'2025-12-02',12,'Tuesday'),
('EMP004','Kavya Nair',1,'2025-12-02',12,'Tuesday'),
('EMP005','Riya Joseph',1,'2025-12-02',12,'Tuesday'),

('EMP001','Anita Rao',1,'2025-12-03',12,'Wednesday'),
('EMP002','Divya Shetty',1,'2025-12-03',12,'Wednesday'),
('EMP003','Neha Sharma',1,'2025-12-03',12,'Wednesday'),
('EMP004','Kavya Nair',1,'2025-12-03',12,'Wednesday'),
('EMP005','Riya Joseph',1,'2025-12-03',12,'Wednesday'),

('EMP001','Anita Rao',1,'2025-12-04',12,'Thursday'),
('EMP002','Divya Shetty',1,'2025-12-04',12,'Thursday'),
('EMP003','Neha Sharma',1,'2025-12-04',12,'Thursday'),
('EMP004','Kavya Nair',1,'2025-12-04',12,'Thursday'),
('EMP005','Riya Joseph',1,'2025-12-04',12,'Thursday'),

('EMP001','Anita Rao',1,'2025-12-05',12,'Friday'),
('EMP002','Divya Shetty',1,'2025-12-05',12,'Friday'),
('EMP003','Neha Sharma',1,'2025-12-05',12,'Friday'),
('EMP004','Kavya Nair',1,'2025-12-05',12,'Friday'),
('EMP005','Riya Joseph',1,'2025-12-05',12,'Friday'),

('EMP001','Anita Rao',1,'2025-12-06',12,'Saturday'),
('EMP002','Divya Shetty',1,'2025-12-06',12,'Saturday'),
('EMP003','Neha Sharma',1,'2025-12-06',12,'Saturday'),
('EMP004','Kavya Nair',1,'2025-12-06',12,'Saturday'),
('EMP005','Riya Joseph',1,'2025-12-06',12,'Saturday'),

('EMP001','Anita Rao',1,'2025-12-07',12,'Sunday'),
('EMP002','Divya Shetty',1,'2025-12-07',12,'Sunday'),
('EMP003','Neha Sharma',1,'2025-12-07',12,'Sunday'),
('EMP004','Kavya Nair',1,'2025-12-07',12,'Sunday'),
('EMP005','Riya Joseph',1,'2025-12-07',12,'Sunday'),


-- Week 2 : Dec 8–14 (Shift 2)
('EMP001','Anita Rao',2,'2025-12-08',12,'Monday'),
('EMP002','Divya Shetty',2,'2025-12-08',12,'Monday'),
('EMP003','Neha Sharma',2,'2025-12-08',12,'Monday'),
('EMP004','Kavya Nair',2,'2025-12-08',12,'Monday'),
('EMP005','Riya Joseph',2,'2025-12-08',12,'Monday'),

('EMP001','Anita Rao',2,'2025-12-09',12,'Tuesday'),
('EMP002','Divya Shetty',2,'2025-12-09',12,'Tuesday'),
('EMP003','Neha Sharma',2,'2025-12-09',12,'Tuesday'),
('EMP004','Kavya Nair',2,'2025-12-09',12,'Tuesday'),
('EMP005','Riya Joseph',2,'2025-12-09',12,'Tuesday'),

('EMP001','Anita Rao',2,'2025-12-10',12,'Wednesday'),
('EMP002','Divya Shetty',2,'2025-12-10',12,'Wednesday'),
('EMP003','Neha Sharma',2,'2025-12-10',12,'Wednesday'),
('EMP004','Kavya Nair',2,'2025-12-10',12,'Wednesday'),
('EMP005','Riya Joseph',2,'2025-12-10',12,'Wednesday'),

('EMP001','Anita Rao',2,'2025-12-11',12,'Thursday'),
('EMP002','Divya Shetty',2,'2025-12-11',12,'Thursday'),
('EMP003','Neha Sharma',2,'2025-12-11',12,'Thursday'),
('EMP004','Kavya Nair',2,'2025-12-11',12,'Thursday'),
('EMP005','Riya Joseph',2,'2025-12-11',12,'Thursday'),

('EMP001','Anita Rao',2,'2025-12-12',12,'Friday'),
('EMP002','Divya Shetty',2,'2025-12-12',12,'Friday'),
('EMP003','Neha Sharma',2,'2025-12-12',12,'Friday'),
('EMP004','Kavya Nair',2,'2025-12-12',12,'Friday'),
('EMP005','Riya Joseph',2,'2025-12-12',12,'Friday'),

('EMP001','Anita Rao',2,'2025-12-13',12,'Saturday'),
('EMP002','Divya Shetty',2,'2025-12-13',12,'Saturday'),
('EMP003','Neha Sharma',2,'2025-12-13',12,'Saturday'),
('EMP004','Kavya Nair',2,'2025-12-13',12,'Saturday'),
('EMP005','Riya Joseph',2,'2025-12-13',12,'Saturday'),

('EMP001','Anita Rao',2,'2025-12-14',12,'Sunday'),
('EMP002','Divya Shetty',2,'2025-12-14',12,'Sunday'),
('EMP003','Neha Sharma',2,'2025-12-14',12,'Sunday'),
('EMP004','Kavya Nair',2,'2025-12-14',12,'Sunday'),
('EMP005','Riya Joseph',2,'2025-12-14',12,'Sunday'),


-- Week 3 : Dec 15–21 (Shift 3)
('EMP001','Anita Rao',3,'2025-12-15',12,'Monday'),
('EMP002','Divya Shetty',3,'2025-12-15',12,'Monday'),
('EMP003','Neha Sharma',3,'2025-12-15',12,'Monday'),
('EMP004','Kavya Nair',3,'2025-12-15',12,'Monday'),
('EMP005','Riya Joseph',3,'2025-12-15',12,'Monday'),

('EMP001','Anita Rao',3,'2025-12-16',12,'Tuesday'),
('EMP002','Divya Shetty',3,'2025-12-16',12,'Tuesday'),
('EMP003','Neha Sharma',3,'2025-12-16',12,'Tuesday'),
('EMP004','Kavya Nair',3,'2025-12-16',12,'Tuesday'),
('EMP005','Riya Joseph',3,'2025-12-16',12,'Tuesday'),

('EMP001','Anita Rao',3,'2025-12-17',12,'Wednesday'),
('EMP002','Divya Shetty',3,'2025-12-17',12,'Wednesday'),
('EMP003','Neha Sharma',3,'2025-12-17',12,'Wednesday'),
('EMP004','Kavya Nair',3,'2025-12-17',12,'Wednesday'),
('EMP005','Riya Joseph',3,'2025-12-17',12,'Wednesday'),

('EMP001','Anita Rao',3,'2025-12-18',12,'Thursday'),
('EMP002','Divya Shetty',3,'2025-12-18',12,'Thursday'),
('EMP003','Neha Sharma',3,'2025-12-18',12,'Thursday'),
('EMP004','Kavya Nair',3,'2025-12-18',12,'Thursday'),
('EMP005','Riya Joseph',3,'2025-12-18',12,'Thursday'),

('EMP001','Anita Rao',3,'2025-12-19',12,'Friday'),
('EMP002','Divya Shetty',3,'2025-12-19',12,'Friday'),
('EMP003','Neha Sharma',3,'2025-12-19',12,'Friday'),
('EMP004','Kavya Nair',3,'2025-12-19',12,'Friday'),
('EMP005','Riya Joseph',3,'2025-12-19',12,'Friday'),

('EMP001','Anita Rao',3,'2025-12-20',12,'Saturday'),
('EMP002','Divya Shetty',3,'2025-12-20',12,'Saturday'),
('EMP003','Neha Sharma',3,'2025-12-20',12,'Saturday'),
('EMP004','Kavya Nair',3,'2025-12-20',12,'Saturday'),
('EMP005','Riya Joseph',3,'2025-12-20',12,'Saturday'),

('EMP001','Anita Rao',3,'2025-12-21',12,'Sunday'),
('EMP002','Divya Shetty',3,'2025-12-21',12,'Sunday'),
('EMP003','Neha Sharma',3,'2025-12-21',12,'Sunday'),
('EMP004','Kavya Nair',3,'2025-12-21',12,'Sunday'),
('EMP005','Riya Joseph',3,'2025-12-21',12,'Sunday'),


-- Week 4 : Dec 22–28 (Shift 1)
('EMP001','Anita Rao',1,'2025-12-22',12,'Monday'),
('EMP002','Divya Shetty',1,'2025-12-22',12,'Monday'),
('EMP003','Neha Sharma',1,'2025-12-22',12,'Monday'),
('EMP004','Kavya Nair',1,'2025-12-22',12,'Monday'),
('EMP005','Riya Joseph',1,'2025-12-22',12,'Monday'),

('EMP001','Anita Rao',1,'2025-12-23',12,'Tuesday'),
('EMP002','Divya Shetty',1,'2025-12-23',12,'Tuesday'),
('EMP003','Neha Sharma',1,'2025-12-23',12,'Tuesday'),
('EMP004','Kavya Nair',1,'2025-12-23',12,'Tuesday'),
('EMP005','Riya Joseph',1,'2025-12-23',12,'Tuesday'),

('EMP001','Anita Rao',1,'2025-12-24',12,'Wednesday'),
('EMP002','Divya Shetty',1,'2025-12-24',12,'Wednesday'),
('EMP003','Neha Sharma',1,'2025-12-24',12,'Wednesday'),
('EMP004','Kavya Nair',1,'2025-12-24',12,'Wednesday'),
('EMP005','Riya Joseph',1,'2025-12-24',12,'Wednesday'),

('EMP001','Anita Rao',1,'2025-12-25',12,'Thursday'),
('EMP002','Divya Shetty',1,'2025-12-25',12,'Thursday'),
('EMP003','Neha Sharma',1,'2025-12-25',12,'Thursday'),
('EMP004','Kavya Nair',1,'2025-12-25',12,'Thursday'),
('EMP005','Riya Joseph',1,'2025-12-25',12,'Thursday'),

('EMP001','Anita Rao',1,'2025-12-26',12,'Friday'),
('EMP002','Divya Shetty',1,'2025-12-26',12,'Friday'),
('EMP003','Neha Sharma',1,'2025-12-26',12,'Friday'),
('EMP004','Kavya Nair',1,'2025-12-26',12,'Friday'),
('EMP005','Riya Joseph',1,'2025-12-26',12,'Friday'),

('EMP001','Anita Rao',1,'2025-12-27',12,'Saturday'),
('EMP002','Divya Shetty',1,'2025-12-27',12,'Saturday'),
('EMP003','Neha Sharma',1,'2025-12-27',12,'Saturday'),
('EMP004','Kavya Nair',1,'2025-12-27',12,'Saturday'),
('EMP005','Riya Joseph',1,'2025-12-27',12,'Saturday'),

('EMP001','Anita Rao',1,'2025-12-28',12,'Sunday'),
('EMP002','Divya Shetty',1,'2025-12-28',12,'Sunday'),
('EMP003','Neha Sharma',1,'2025-12-28',12,'Sunday'),
('EMP004','Kavya Nair',1,'2025-12-28',12,'Sunday'),
('EMP005','Riya Joseph',1,'2025-12-28',12,'Sunday'),


-- Week 5 : Dec 29–31 (Shift 2)
('EMP001','Anita Rao',2,'2025-12-29',12,'Monday'),
('EMP002','Divya Shetty',2,'2025-12-29',12,'Monday'),
('EMP003','Neha Sharma',2,'2025-12-29',12,'Monday'),
('EMP004','Kavya Nair',2,'2025-12-29',12,'Monday'),
('EMP005','Riya Joseph',2,'2025-12-29',12,'Monday'),

('EMP001','Anita Rao',2,'2025-12-30',12,'Tuesday'),
('EMP002','Divya Shetty',2,'2025-12-30',12,'Tuesday'),
('EMP003','Neha Sharma',2,'2025-12-30',12,'Tuesday'),
('EMP004','Kavya Nair',2,'2025-12-30',12,'Tuesday'),
('EMP005','Riya Joseph',2,'2025-12-30',12,'Tuesday'),

('EMP001','Anita Rao',2,'2025-12-31',12,'Wednesday'),
('EMP002','Divya Shetty',2,'2025-12-31',12,'Wednesday'),
('EMP003','Neha Sharma',2,'2025-12-31',12,'Wednesday'),
('EMP004','Kavya Nair',2,'2025-12-31',12,'Wednesday'),
('EMP005','Riya Joseph',2,'2025-12-31',12,'Wednesday');







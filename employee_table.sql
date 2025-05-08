-- -- Employees table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender CHAR(1),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2),
    attrition VARCHAR(5) -- Yes or No
);

-- -- Performance reviews table
CREATE TABLE performance_reviews (
    review_id INT PRIMARY KEY,
    emp_id INT,
    review_date DATE,
    rating DECIMAL(2,1),  -- 1.0 to 5.0
    comments TEXT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- -- Attendance table
CREATE TABLE attendance (
    record_id INT PRIMARY KEY,
    emp_id INT,
    date DATE,
    status VARCHAR(10), -- Present / Absent / Leave
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
-- -- Employees
INSERT INTO employees VALUES
(1, 'John Smith', 34, 'M', 'Sales', '2018-01-01', 65000, 'No'),
(2, 'Alice Johnson', 29, 'F', 'Marketing', '2019-03-15', 72000, 'Yes'),
(3, 'Bob Lee', 41, 'M', 'IT', '2016-06-10', 95000, 'No'),
(4, 'Samantha Ray', 37, 'F', 'HR', '2020-11-01', 58000, 'No'),
(5, 'David Kim', 30, 'M', 'Sales', '2021-02-20', 61000, 'Yes');

-- -- Performance Reviews
INSERT INTO performance_reviews VALUES
(101, 1, '2023-12-31', 4.0, 'Consistent performance'),
(102, 2, '2023-12-31', 2.0, 'Needs improvement'),
(103, 3, '2023-12-31', 4.8, 'Outstanding contribution'),
(104, 4, '2023-12-31', 3.5, 'Good team player'),
(105, 5, '2023-12-31', 1.5, 'Below expectations');

-- -- Attendance (January 2024 - Sample for 5 employees, 5 records each)
INSERT INTO attendance VALUES
(1, 1, '2024-01-01', 'Present'),
(2, 1, '2024-01-02', 'Present'),
(3, 1, '2024-01-03', 'Absent'),
(4, 1, '2024-01-04', 'Present'),
(5, 1, '2024-01-05', 'Present'),

(6, 2, '2024-01-01', 'Present'),
(7, 2, '2024-01-02', 'Absent'),
(8, 2, '2024-01-03', 'Absent'),
(9, 2, '2024-01-04', 'Present'),
(10, 2, '2024-01-05', 'Leave'),

(11, 3, '2024-01-01', 'Present'),
(12, 3, '2024-01-02', 'Present'),
(13, 3, '2024-01-03', 'Present'),
(14, 3, '2024-01-04', 'Present'),
(15, 3, '2024-01-05', 'Present'),

(16, 4, '2024-01-01', 'Leave'),
(17, 4, '2024-01-02', 'Present'),
(18, 4, '2024-01-03', 'Present'),
(19, 4, '2024-01-04', 'Absent'),
(20, 4, '2024-01-05', 'Present'),

(21, 5, '2024-01-01', 'Absent'),
(22, 5, '2024-01-02', 'Absent'),
(23, 5, '2024-01-03', 'Present'),
(24, 5, '2024-01-04', 'Absent'),
(25, 5, '2024-01-05', 'Leave');



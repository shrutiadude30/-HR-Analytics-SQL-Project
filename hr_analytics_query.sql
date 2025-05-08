-- -- Average Salary by Department

SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

-- Attrition Rate by Department
SELECT department, 
  ROUND(
    100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2
  ) AS attrition_rate
FROM employees
GROUP BY department;

-- Top Performers (Rating ≥ 4.5)
SELECT e.name, p.rating
FROM performance_reviews p
JOIN employees e ON p.emp_id = e.emp_id
WHERE p.rating >= 4.5
ORDER BY p.rating DESC;

-- Attendance Rate by Employee
SELECT emp_id,
  ROUND(100.0 * 
    SUM(CASE WHEN status = 'Present' THEN 1 ELSE 0 END) / COUNT(*), 2
  ) AS attendance_rate
FROM attendance
GROUP BY emp_id;

-- Correlation: Low Performance vs Attrition
SELECT e.emp_id, e.name, p.rating, e.attrition
FROM employees e
JOIN performance_reviews p ON e.emp_id = p.emp_id
WHERE p.rating <= 2 AND e.attrition = 'Yes';

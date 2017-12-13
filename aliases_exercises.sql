USE employees_db;

SELECT concat(emp_no,' - ',last_name,', ',first_name) AS full_name, birth_date AS DOB
FROM employees
ORDER BY emp_no ASC
LIMIT 10;
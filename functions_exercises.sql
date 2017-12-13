USE employees_db;

SELECT concat(first_name,' ',last_name)
FROM employees
WHERE last_name LIKE ('%E%')
ORDER BY emp_no ASC;

SELECT concat(DATEDIFF(NOW(), hire_date)) AS 'Days Worked', first_name, last_name
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25%'
ORDER BY birth_date ASC, hire_date DESC;
USE employees_db;

SELECT
  u.name AS 'user',
  r.name AS 'role'
FROM users u
  JOIN roles r ON r.id = u.role_id
WHERE r.name = 'admin';

# Get

SELECT *
FROM users
WHERE role_id IS NULL;

SELECT *
FROM users u
  JOIN roles r ON r.id = u.role_id
WHERE r.name IN ('author', 'reviewer');


# Returns all results that meet requirements while EXCLUDING ones that don't
SELECT
  u.name,
  r.name
FROM users u
  JOIN roles r ON r.id = u.role_id;


# Left Join is the left table that meets requirements
# plus all the ones from the right table that meets the requirements
# All the ones that do not meet requirements will return NULL

SELECT
  u.name,
  r.name
FROM users u -- left table
  LEFT JOIN roles r ON r.id = u.role_id; -- right table


# Associative Tables and Joins curriculum example
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
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


# # Examples for one to one relationships
#
# # Get the users that are admin
# SELECT u.name AS 'user', r.name AS 'role'
# FROM users u
#   join roles r ON r.id = u.role_id
# WHERE r.name = 'admin';
#
#
# # Get all the users without a role
#
# select * from users where role_id is NULL ;
#
#
# select * from users u
#   join roles r ON r.id = u.role_id
# where r.name in ('author', 'reviewer')
#
# # List of users with their roles without the ones who doesn't have one
# SELECT u.name, r.name
# from users u
#   join roles r ON  r.id = u.role_id;
#
#
# # left join
#
# SELECT u.name, r.name
# from users u -- left table
#   left join roles r ON  r.id = u.role_id; -- right table
#
# # right join
# SELECT u.name, r.name
# from users u
#   right join roles r ON  r.id = u.role_id;

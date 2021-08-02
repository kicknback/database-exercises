USE employees;

SELECT dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN departments d on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;

SELECT dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN departments d on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY dept_name;

SELECT title, count(title) AS Total
FROM titles t
         join dept_emp de on t.emp_no = de.emp_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND dept_no = 'd009'
GROUP BY title;

SELECT dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       salary AS Salary
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
  AND dm.to_date = '9999-01-01'
ORDER BY dept_name;

# bonus Find the names of all current employees, their department name,
# and their current manager's name .

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       dept_name AS Department,
       CONCAT(emp.first_name, ' ', emp.last_name) AS Manager
FROM employees.employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on d.dept_no = de.dept_no
         JOIN dept_manager dm on de.dept_no = dm.dept_no
         JOIN employees emp on dm.emp_no = emp.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY dept_name, e.emp_no;




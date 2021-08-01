USE employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN departments d on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN departments d on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE e.gender = 'F';

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS Salary
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
ORDER BY dept_name, salary DESC;
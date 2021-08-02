USE employees;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN departments d on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM dept_manager AS dm
         JOIN departments d on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
WHERE to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY dept_name;

SELECT *
FROM employees e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN titles t on de.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND de.dept_no = 'd009';

SELECT dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary AS Salary
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND
        dm.to_date = '9999-01-01'
ORDER BY dept_name, salary DESC;
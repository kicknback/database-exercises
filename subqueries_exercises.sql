USE employees;

SELECT first_name, last_name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

SELECT title, first_name
FROM employees AS e
         JOIN titles t on e.emp_no = t.emp_no
WHERE title IN (
    SELECT title FROM titles
    WHERE e.first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees AS e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager
    WHERE e.gender = 'F' AND
            dm.to_date = '9999-01-01'
);
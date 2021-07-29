USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

-- Refactored from above
SELECT * FROM employees
WHERE gender = 'M'
  AND
    (first_name = 'Irena' OR
     first_name = 'Vidya' OR
     first_name = 'Maya');

SELECT CONCAT(first_name, ' ', last_name) AS 'First and Last' FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'First and Last' FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'First and Last' FROM employees
WHERE last_name LIKE 'E%e' ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE 'qu%';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT  * FROM employees
WHERE MONTH(birth_date) = 12 AND
        DAY(birth_date) = 25;

SELECT  * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND
        MONTH(birth_date) = 12 AND
        DAY(birth_date) = 25;

SELECT  * FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND
        MONTH(birth_date) = 12 AND
        DAY(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

SELECT  first_name, last_name, birth_date, hire_date, DATEDIFF(now(), hire_date) AS 'Days employed' FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999 AND
        MONTH(birth_date) = 12 AND
        DAY(birth_date) = 25;
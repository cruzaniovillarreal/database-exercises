USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender != 'F'
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT CONCAT(e.first_name, ' ', e.last_name) FROM employees e
WHERE first_name LIKE 'E%' AND first_name LIKE '%E';

SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%'
ORDER BY birth_date, hire_date DESC;

SELECT CONCAT(e.first_name, ' ', e.last_name) as Name, datediff(now(), e.hire_date) as days_worked FROM employees e
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25%'
ORDER BY days_worked DESC;

SELECT * FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
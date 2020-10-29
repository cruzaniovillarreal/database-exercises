USE employees;

SELECT *
FROM employees
WHERE hire_date = (
    select hire_date
    from employees
    where emp_no = 101010
    );

SELECT t.title AS Title
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
          )
GROUP BY t.title;

SELECT e.first_name, e.last_name
FROM employees e
WHERE e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager dm
    WHERE dm.to_date = '9999-01-01'
    ) AND e.gender = 'f';
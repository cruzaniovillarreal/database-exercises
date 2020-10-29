USE employees;

SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER
FROM departments as d
JOIN dept_manager dm on d.dept_no = dm.dept_no
JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';


SELECT d.dept_name AS DEPARTMENT_NAME, CONCAT(e.first_name, ' ', e.last_name) AS DEPARTMENT_MANAGER
FROM departments as d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'f';


SELECT t.title AS Title, COUNT(e.emp_no) AS Count
FROM titles t
         JOIN employees e on t.emp_no = e.emp_no
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Name, s.salary AS Salary
FROM departments as d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on dm.emp_no = e.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';


SELECT CONCAT(e.first_name, ' ', e.last_name) AS NAME,
       d.dept_name AS DEPARTMENT,
       CONCAT(f.first_name, ' ', f.last_name) AS MANAGER_NAME
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN dept_manager dm on de.dept_no = dm.dept_no
         JOIN employees f ON f.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
ORDER BY NAME;
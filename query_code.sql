-- 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
	ON e.emp_no = s.emp_no

-- 2 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3 
SELECT e.first_name, e.last_name, d.dept_name, ma.emp_no, ma.dept_no
FROM dept_manager ma
LEFT JOIN  employees e
	ON ma.emp_no = e.emp_no
LEFT JOIN departments d
	ON ma.dept_no = d.dept_no

-- 4
SELECT e.first_name, e.last_name, e.emp_no, d.dept_name
FROM employees e
LEFT JOIN  dept_emp dn
	ON e.emp_no = dn.emp_no
LEFT JOIN departments d
	ON dn.dept_no = d.dept_no

-- 4
SELECT e.first_name, e.last_name, e.emp_no, d.dept_name
FROM employees e
LEFT JOIN  dept_emp dn
	ON e.emp_no = dn.emp_no
LEFT JOIN departments d
	ON dn.dept_no = d.dept_no

-- 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'

-- 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN  dept_emp dn
	ON e.emp_no = dn.emp_no
LEFT JOIN departments d
	ON dn.dept_no = d.dept_no
WHERE dept_name = 'Sales'

-- 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN  dept_emp dn
	ON e.emp_no = dn.emp_no
LEFT JOIN departments d
	ON dn.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--8
SELECT last_name, COUNT(last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;


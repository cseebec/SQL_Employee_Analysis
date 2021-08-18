CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
-- Make sure to import CSV before running next line
SELECT * FROM departments LIMIT 10;

CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT * FROM titles LIMIT 10;

-- Before importing the employee data make sure the dates in the excel file are in the correct . . .
-- format of yyyy-mm-dd
CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
	-- TEMPLATE
	-- FOREIGN KEY (<column name>) REFERENCES <reference table> (<primary key>)
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees LIMIT 10;

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_manager LIMIT 10;

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_emp LIMIT 10;

CREATE TABLE salaries (
	emp_no_s INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (emp_no_s),
	FOREIGN KEY(emp_no_s) REFERENCES employees(emp_no)
);
SELECT * FROM salaries LIMIT 10;


	
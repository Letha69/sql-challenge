-- drop table if exist

DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE title;

-- create table title
CREATE TABLE title(
    title_id VARCHAR PRIMARY KEY NOT NULL ,
    title VARCHAR  NOT NULL 
);

--create table employees
CREATE TABLE employees(
    emp_no INT PRIMARY KEY NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date DATE  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date DATE  NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES title (title_id)
);

-- create table departments

CREATE TABLE departments(
    dept_no VARCHAR PRIMARY KEY NOT NULL ,
    dept_name VARCHAR  NOT NULL
);

--create table dept_manager
CREATE TABLE dept_manager(
    dept_no VARCHAR  NOT NULL ,
    emp_no INT  NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

--create table salaries
CREATE TABLE salaries(
    emp_no INT  NOT NULL ,
    salary INT  NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

--create table dept_emp
CREATE TABLE dept_emp (
    emp_no INT  NOT NULL ,
    dept_no VARCHAR  NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
	
);

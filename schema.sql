DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_employees;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;



create table departments(
	dept_no varchar primary key not null,
	dept_name varchar not null
);

select * from departments;

create table titles(
	title_id varchar not null primary key,
	tite varchar not null 
 );

select * from titles




Create table employees(
	emp_no int primary key not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null,
	Foreign key (emp_title_id) references titles(title_id)
);

select * from employees;

create table dept_employees(
	emp_no int not null,
	dept_no varchar not null,
	Foreign key (emp_no) references employees(emp_no),
	Foreign key (dept_no) references departments(dept_no)
);

select * from dept_employees;

CREATE TABLE salaries(
	emp_no int not null,
	salary int not null,
	Foreign key (emp_no) references employees(emp_no)
);

select * from salaries;

create table manager(
	dept_no varchar not null,
	emp_no int not null,
	Foreign key (dept_no) references departments(dept_no),
	Foreign key (emp_no) references employees(emp_no)
);

select * from manager


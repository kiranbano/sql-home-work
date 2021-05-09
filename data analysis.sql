--Data Analysis
--employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1987-01-01';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select departments.dept_no, departments.dept_name, manager.emp_no, employees.last_name, employees.first_name
from departments
join manager
on departments.dept_no = manager.dept_no
join employees
on manager.emp_no = employees.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.

select dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_employees
join employees
on dept_employees.emp_no = employees.emp_no
join departments
on dept_employees.dept_no = departments.dept_no;

--List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
select employees.first_name, employees.last_name, employees.sex from employees
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_employees
join employees
on dept_employees.emp_no = employees.emp_no
join departments
on dept_employees.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

--In descending order, list the frequency count of
--employee last names, i.e., how many employees share each last name.

SELECT last_name, 
count(last_name) as "frequency" from employees
group by last_name
order by count(last_name)desc;



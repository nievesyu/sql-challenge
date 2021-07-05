-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no,  e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s 
on s.emp_no = e.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees e 
where hire_date in (
	select hire_date
	from employees
	where hire_date like '%1986'
);


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select departments.dept_no,departments.dept_name, dept_managers.emp_no, employees.last_name, employees.first_name
from departments
join dept_managers on dept_managers.dept_no = departments.dept_no
join employees on employees.emp_no = dept_managers.emp_no


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select em.emp_no, em.last_name, em.first_name, departments.dept_name
from employees as em
join dept_emp on dept_emp.emp_no = em.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select em.emp_no, em.last_name, em.first_name, departments.dept_name
from employees as em
join dept_emp on dept_emp.emp_no = em.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_name in ('Sales', 'Development');

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count desc


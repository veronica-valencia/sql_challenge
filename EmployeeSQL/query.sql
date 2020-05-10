-- Perform an Inner Join on Employee Number 
--List the following details of each employee: employee number, 
-- cont. last name, first name, sex, and salary.
select employees.emp_no,employees.last_name,
employees.first_name, employees.sex,salaries.salary 
from employees 
inner join salaries on 
employees.emp_no = salaries.emp_no;

-- Filter Employee database for employees hired based on year
--List first name, last name, 
-- cont. and hire date for employees who were hired in 1986.
select employees.last_name,
employees.first_name,employees.hire_date
from employees
where (hire_date >= '01/01/1986' and 
hire_date<= '12/31/1986') Order by hire_date asc;

--List the manager of each department. Include department number,
-- cont. department name, employee number, last & first name.
select a.dept_no,
a.emp_no,b.dept_no,b.dept_name,
c.emp_no,c.last_name,
c.first_name
from dept_manager a, departments b, employees c 
where (a.emp_no= c.emp_no) and (a.dept_no= b.dept_no);

--List the department of each employee with employee number,
-- employee last & first name and department name
select employees.emp_no,employees.last_name,
		employees.first_name,departments.dept_name
From employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no= departments.dept_no;


--List first name, last name, and sex for employees whose first 
--name is "Hercules" and last names begin with "B."
select employees.last_name,
employees.first_name,employees.sex
from employees
where first_name = 'Hercules' and last_name like 'B%';



--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name,
employees.first_name,departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name and 
--department name 
select employees.emp_no, employees.last_name,
employees.first_name,departments.dept_name
from employees
inner join dept_emp on dept_emp.emp_no = employees.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where (dept_name = 'Sales' or dept_name = 'Development');


--In descending order, list the frequency count of employee last 
--names, i.e., how many employees share each last name.
select last_name, COUNT(*)
from employees
group by last_name
order by count desc;



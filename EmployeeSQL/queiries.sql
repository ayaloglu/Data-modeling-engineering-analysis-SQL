select * from employees;

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees, salaries
where salaries.emp_no = employees.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date like '%1986'

select employees.first_name, employees.last_name, dept_manager.dept_no,dept_manager.emp_no,departments.dept_name
from employees, dept_manager, departments
where employees.emp_no = dept_manager.emp_no and departments.dept_no = dept_manager.dept_no;

select employees.first_name, employees.last_name, employees.emp_no, departments.dept_name
from employees, departments, dept_emp
where employees.emp_no = dept_emp.emp_no and dept_emp.dept_no = departments.dept_no;


select first_name, last_name, sex
from employees
where first_name ='Hercules' and last_name like 'B%'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees, departments, dept_emp
where employees.emp_no = dept_emp.emp_no and dept_emp.dept_no = departments.dept_no
 and departments.dept_name = 'Sales' or departments.dept_name = 'Development';

select last_name, count(last_name) as "name count"
from employees
group by last_name
order by "name count" desc;
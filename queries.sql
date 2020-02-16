-- List the following details of each employee: employee number, last name, first name, gender, and salary
select em.emp_no, em.last_name, em.first_name, em.gender, sal.salary
from employees as em 
left join salaries as sal
on (em.emp_no=sal.emp_no);

--  List employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select man.dept_no, man.emp_no, man.from_date, man.to_date, dep.dept_name, em.first_name, em.last_name
from dept_manager as man
inner join departments as dep
on (man.dept_no=dep.dept_no)
inner join employees as em
on (man.emp_no=em.emp_no);

-- List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select em.last_name, em.first_name, de.emp_no, dp.dept_name
from employees as em
inner join dept_emp as de
on (em.emp_no=de.emp_no)
inner join departments as dp
on (de.dept_no=dp.dept_no);

--  List all employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name
from employees
where first_name='Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select em.last_name, em.first_name, de.emp_no, dp.dept_name
from employees as em
inner join dept_emp as de
on (em.emp_no=de.emp_no)
inner join departments as dp
on (de.dept_no=dp.dept_no)
where dp.dept_name='Sales';

--List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
select em.last_name, em.first_name, de.emp_no, dp.dept_name
from employees as em
inner join dept_emp as de
on (em.emp_no=de.emp_no)
inner join departments as dp
on (de.dept_no=dp.dept_no)
where dp.dept_name='Sales' or dp.dept_name='Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,COUNT(*) AS "Number of employees" 
FROM employees 
GROUP BY last_name
ORDER BY last_name DESC;

--My employee number, lol
select first_name, last_name, emp_no
from employees
where emp_no=499942;
 
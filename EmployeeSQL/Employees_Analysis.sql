--Details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees AS e 
INNER JOIN salaries AS s 
ON e.emp_no = s.emp_no;

--first name, last name, and hire date for employees who were hired in 1986
SELECT last_name, first_name, hire_date 
FROM employees 
WHERE hire_date 
BETWEEN '1/1/86' AND '12/31/1986';

--Manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM departments AS d 
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no 
INNER JOIN employees AS e 
ON dm.emp_no = e.emp_no;

--Department of each employee with the following information: 
--employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM departments AS d 
INNER JOIN dept_emp AS de
ON d.dept_no = de.dept_no
INNER JOIN employees AS e
ON e.emp_no = de.emp_no;

--first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees 
WHERE last_name LIKE 'B%' 
AND first_name = 'Hercules';

--All employees in the Sales department, including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments as d ON d.dept_no = de.dept_no 
WHERE dept_name = 'Sales';

--All employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments as d ON d.dept_no = de.dept_no 
WHERE dept_name IN ('Sales', 'Development');

--Frequency count of employee last names, i.e., how many employees share each last name, 
--in descending order
SELECT last_name, COUNT(*) AS "Counts"
FROM employees 
GROUP BY last_name
ORDER BY "Counts" DESC;



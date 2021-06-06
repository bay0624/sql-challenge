# Objective
The goal of this challenge is to research and create a database for employees of a corporation from the 1980s and 1990s. All that remains of the database of employees from that period are in six CSV files.

The first thing I did was to inspect the CSVs and create an Entity Relationship Diagram (ERD). I used Quick Database Design (http://www.quickdatabasediagrams.com) and below is the result:
![ERD](https://github.com/bay0624/sql-challenge/blob/main/EmployeeSQL/EmpolyeesDB_Schema.png)

# Analysis
I exported the above Employees Database into PostgreSQL and then queried it to obtain the following results:

- The employee number, last name, first name, sex, and salary for each employee.
- The first name, last name, and hire date for employees who were hired in 1986.
- The manager of each department along with their department number, department name, employee number, last name, first name.
- The department of each employee with the following information: employee number, last name, first name, and department name.
- The first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
- All employees in the Sales department, including their employee number, last name, first name, and department name.
- All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- The frequency count of employee last names, i.e., how many employees share each last name; in descending order.

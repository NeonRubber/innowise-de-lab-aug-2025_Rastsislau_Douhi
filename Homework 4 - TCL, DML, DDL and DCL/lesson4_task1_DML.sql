INSERT INTO Employees (firstname, lastname, department, salary)
VALUES
	('Pavel', 'Durov', 'IT', 90000),
	('Jeff', 'Bezos', 'HR', 100000);

SELECT *
FROM employees;

SELECT
	employees.firstname,
	employees.lastname
FROM employees
WHERE employees.department='IT';

UPDATE employees
SET salary=65000
WHERE employees.firstname='Alice' AND employees.lastname='Smith';

DELETE FROM employeeprojects
WHERE employeeid = (SELECT employeeid FROM employees WHERE lastname='Prince');
--Удаление записи из EmployeeProjects для беспрепятсвенного удаления сотрудника с фамилией Prince в следующем запросе

DELETE
FROM employees
WHERE employees.lastname='Prince';

SELECT *
FROM employees;
SELECT *
FROM employees;

INSERT INTO employees (firstname, lastname, department, salary, email)
VALUES
	('Tim', 'Cook', 'IT', 99999, 'appleceo@apple.com');

UPDATE employees
SET email='newappleceomail@apple.com'
WHERE employees.firstname='Tim' AND employees.lastname='Cook';
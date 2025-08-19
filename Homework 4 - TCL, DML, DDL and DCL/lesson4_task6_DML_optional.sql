--1

SELECT projectname
FROM projects
JOIN employeeprojects ON projects.projectid=employeeprojects.projectid
JOIN employees ON employeeprojects.employeeid=employees.employeeid
WHERE employees.firstname='Bob' AND employees.lastname='Johnson' AND employeeprojects.hoursworked>150;

--2

UPDATE projects
SET budget=budget*1.1
WHERE projectid IN (
	SELECT DISTINCT employeeprojects.projectid
	FROM employeeprojects
	JOIN employees
	ON employeeprojects.employeeid=employees.employeeid
	WHERE employees.department='IT');

SELECT
	projects.projectname,
	projects.budget,
	employees.firstname,
	employees.lastname,
	employees.department
FROM projects
JOIN employeeprojects ON projects.projectid=employeeprojects.projectid
JOIN employees ON employeeprojects.employeeid=employees.employeeid
WHERE employees.department='IT';

--3

UPDATE projects
SET enddate = startdate + INTERVAL '1' YEAR
WHERE enddate IS NULL;

SELECT *
FROM projects
WHERE enddate - INTERVAL '1' YEAR = startdate;

--4.

BEGIN;

INSERT INTO employees (firstname, lastname, department, salary)
VALUES ('Walter', 'White', 'IT', 69000)
RETURNING employeeid;
INSERT INTO employeeprojects (employeeid, projectid, hoursworked)
SELECT
	employeeid,
	projectid,
	80
FROM projects
JOIN (SELECT employeeid FROM employees
	WHERE firstname='Walter' AND lastname='White')
	AS newemployee
ON TRUE WHERE projectname= 'Website Redesign';

COMMIT;

SELECT
	employees.firstname,
	employees.lastname,
	projects.projectname, 
	employeeprojects.hoursworked
FROM employees
JOIN employeeprojects ON employeeprojects.employeeid=employees.employeeid
JOIN projects ON employeeprojects.projectid=projects.projectid
WHERE firstname='Walter' AND lastname='White';
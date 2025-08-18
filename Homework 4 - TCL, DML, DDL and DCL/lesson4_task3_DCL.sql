CREATE ROLE PostgreSQL;

CREATE USER hr_user
WITH PASSWORD 'prostoyparol';

GRANT PostgreSQL TO hr_user;

GRANT SELECT ON employees
TO PostgreSQL;

GRANT INSERT, UPDATE ON employees
TO PostgreSQL;
--Предоставление привелегий не отдельному пользователю hr_user, а присущей ему роли PostgreSQL
--для возможности наследования этих же прав другими пользователями

GRANT USAGE, SELECT, UPDATE ON SEQUENCE
employees_employeeid_seq
TO PostgreSQL;
--Передача пользователям с ролью PostgreSQL прав на пользование последовательностью employeeid
--для удобной вставки новых сотрудников без необходимости явного указания ID
--В противном случае PostgreSQL выдаёт ошибку "SQL Error [42501]: ОШИБКА: нет доступа к последовательности employees_employeeid_seq"
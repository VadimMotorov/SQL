-- SQL=DDL+DQL+DML--
-- DDL- DATA DEFENITION LANGUAGE (СОЗДАНИЕ, ДОБАВЛЕНИЕ,УДАЛЕНИЕ  БАЗ, ТАБЛИЦ И СТОЛБЦОВ)
-- create database
create database mywork;
-- create table
create table mywork.employee_test (
EMPLOYEE_ID INT NOT NULL,
FIRST_NAME VARCHAR(75),
LAST_NAME VARCHAR(75),
ADDRESS VARCHAR(100),
CITY VARCHAR(30),
STATE VARCHAR(20),
PHONE VARCHAR(25),
COUNTRY VARCHAR(50),
HIRE_DATE DATE,
SALARY DECIMAL(8,2),
PRIMARY KEY (EMPLOYEE_ID));
-- ADD COLUMN--
ALTER TABLE mywork.employee_test 
ADD COLUMN EMAIL VARCHAR(50);
-- DROP COLUMN--
ALTER TABLE mywork.employee_test
 DROP COLUMN EMAIL;
 -- DROP TABLE--
DROP TABLE mywork.employee_test; -- удалит Таблицу
-- DQL -- dATA QUERY LANGUAGE -РАБОТА С КОЛОНКАМИ(SELECT)
-- DML -- DATA MANIPULATION LANGUAGE (РАБОТА С ЗАПИСЯМИ - NSERT, DELETE, UPDATE)

-- ВСТАВИТЬ ДАННЫЕ В ЯЧЕЙКИ ТАБЛИЦЫ
INSERT INTO mywork.employee_test (EMPLOYEE_ID, HIRE_DATE, LAST_NAME, FIRST_NAME, PHONE, SALARY)
VALUES (9999, DATE '2018-12-01', 'SMITH', 'KATHY', '415-333-3333', 10000.00);
SELECT * FROM mywork.employee_test;

INSERT INTO mywork.employee_test (SALARY)
VALUES (10000.00);
SELECT * FROM mywork.employee_test;
-- UPDATE
UPDATE mywork.employee_test SET SALARY=10000.99
WHERE EMPLOYEE_ID = 9999;

SELECT * FROM mywork.employee_test;

-- DELETE -  УДАЛЯЕТ ЗАПИСЬ СТРОКИ

-- DELETE FROM TABLE NAME WHERE CONDITION;
 
DELETE FROM mywork.employee_test WHERE FIRST_NAME ='KATHY';
SELECT * FROM mywork.employee_test;
-- ПОСМОТРЕТЬ СТРУКТУРУ ТАБЛИЦЫ
DESC mywork.employee_test;
INSERT INTO mywork.employee_test (EMPLOYEE_ID, HIRE_DATE, LAST_NAME, FIRST_NAME, PHONE, SALARY)
VALUES (9999, DATE '2018-12-01', 'SMITH', 'KATHY', '415-333-3333', 10000.00);
SELECT * FROM mywork.employee_test;
-- ПЕРЕИМЕНОВАТЬ КОЛОНКУ
ALTER TABLE mywork.employee_test RENAME COLUMN EMPLOYEE_ID TO EMPL_ID;
SELECT * FROM mywork.employee_test;

INSERT INTO mywork.employee_test (EMPL_ID, LAST_NAME, FIRST_NAME, PHONE, SALARY)
VALUES 
(1, 'SMITH1', 'KATHY1', '415-333-3331', 100001.00),
(2, 'SMITH2', 'KATHY2', '415-333-3332', 100002.00),
(3, 'SMITH3', 'KATHY3', '415-333-3333', 100003.00);
SELECT * FROM mywork.employee_test;
UPDATE mywork.employee_test SET PHONE='415-333-3334'
WHERE EMPL_ID = 9999;
SELECT * FROM mywork.employee_test;
-- ДОБАВИТЬ КОЛОНКУ
ALTER TABLE mywork.employee_test ADD COLUMN BONUS INT;
SELECT * FROM mywork.employee_test;
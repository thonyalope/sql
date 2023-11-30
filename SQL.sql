--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int
--)

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Anthony', 'Vargas', 27, 'Male'),
--(1002, 'Manuel', 'Vargas', 52, 'Male'),
--(1003, 'Norma', 'Alvarado', 50, 'Female'),
--(1004, 'Ninoska', 'Vargas', 24, 'Female'),
--(1005, 'Josafat', 'Vargas', 25, 'Male'),
--(1006, 'Victor', 'Vargas', 54, 'Male'),
--(1007, 'Alejandro', 'Rivera', 29, 'Male'),
--(1008, 'Anthony', 'Castro', 27, 'Male'),
--(1009, 'Marco', 'Chinchilla', 28, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 75000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 45800),
--(1009, 'Accountant', 42000)

/*
SELECT Statement
Top, Distinct, Count, As, Max, Min, Avg, *
*/

--SELECT FirstName, LastName
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--SELECT MAX(Salary)
--FROM EmployeeSalary

--SELECT AVG(Salary)
--FROM EmployeeSalary

--SELECT *
--FROM EmployeeSalary
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
SELECT
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

/*
WHERE
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 AND GENDER = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 OR GENDER = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE '%S%'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'V%s%'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IS NOT NULL

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IN ('Anthony', 'Norma')

/*
GROUP BY, ORDER BY
*/

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT Gender
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, Age, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender, Age

--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC

/*
INNER JOINS, OUTER JOINS
*/

--SELECT *
--FROM SQL.dbo.EmployeeDemographics
--INNER JOIN SQL.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SQL.dbo.EmployeeDemographics
--FULL OUTER JOIN SQL.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT JobTitle,AVG(Salary)
--FROM SQL.dbo.EmployeeDemographics
--INNER JOIN SQL.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'
--GROUP BY JobTitle

/*
UNION, UNION ALL
*/

--SELECT *
--FROM SQL.dbo.EmployeeDemographics
--UNION ALL
--SELECT *
--FROM SQL.dbo.WareHouseEmployeeDemographics

--SELECT EmployeeID, FirstName, Age
--FROM SQL.DBO.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM SQL.dbo.EmployeeSalary
--ORDER BY EmployeeID

/*
CASE
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age > 30 THEN 'Old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--END
--FROM SQL.dbo.EmployeeDemographics
--WHERE AGE IS NOT NULL
--ORDER BY AGE

--SELECT JobTitle, Salary,
--CASE
--	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
--	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
--	WHEN JobTitle = 'HR' THEN Salary + (Salary * .0000001)
--	ELSE Salary + (Salary * .03)
--END AS SalaryAfterRaise
--FROM SQL.dbo.EmployeeSalary

/*
HAVING
*/

--SELECT JobTitle, COUNT(JobTitle)
--FROM SQL.dbo.EmployeeDemographics
--JOIN SQL.dbo.EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING COUNT(JobTitle) > 1

--SELECT JobTitle, AVG(Salary)
--FROM SQL.dbo.EmployeeDemographics
--JOIN SQL.dbo.EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER BY AVG(SALARY) DESC

/*
Updating/Deleting Data
*/

--UPDATE SQL.dbo.EmployeeDemographics
--SET FirstName = 'Mariangel', LastName = 'Solis'
--WHERE EmployeeID = 1010

--UPDATE SQL.dbo.EmployeeDemographics
--SET Age = '22', Gender = 'Female'
--WHERE EmployeeID = 1010

--DELETE FROM SQL.dbo.EmployeeDemographics
--WHERE EmployeeID = 1005

/*
Aliasing
*/

--SELECT Demo.EmployeeID, Demo.FirstName, Demo.JobTitle, Sal.Age, Ware.Age
--FROM SQL.dbo.EmployeeDemographics Demo
--LEFT JOIN SQL.dbo.EmployeeSalary Sal
--	ON Demo.EmployeeID = Sal.EmployeeID
--LEFT JOIN SQL.dbo.WareHouseEmployeeDemographics Ware
--	ON Demo.EmployeeID = Ware.EmployeeID

/*
Partition By
*/

--SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
--FROM SQL.dbo.EmployeeDemographics dem
--JOIN SQL.dbo.EmployeeSalary sal
--	ON dem.EmployeeID = sal.EmployeeID

--SELECT Gender, COUNT(Gender)
--FROM SQL.dbo.EmployeeDemographics dem
--JOIN SQL.dbo.EmployeeSalary sal
--	ON dem.EmployeeID = sal.EmployeeID
--GROUP BY Gender

/*
CTEs
*/

--WITH CTE_Employee AS
--(SELECT FirstName, LastName, Gender, Salary,
--COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
--AVG(Salary) OVER (PARTITION BY Gender) AS AVGSalary
--FROM SQL.dbo.EmployeeDemographics emp
--FROM SQL.dbo.EmployeeSalary sal
--	ON emp.EmployeeID = sal.EmployeeID
--WHERE Salary > '45000'
--)
--Select FirstName, AvgSalary
--FROM CTE_Employee

/*
Temp Tables
*/

--CREATE TABLE #temp_Employee (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int
--)

--INSERT INTO #temp_Employee VALUES (
--'10001', 'HR', '45000'
--)

--INSERT INTO #temp_Employee
--SELECT *
--FROM SQL.dbo.EmployeeSalary

--CREATE TABLE #temp_Employee2 (
--JobTitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int
--)

--INSERT INTO #temp_Employee2
--SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
--FROM SQL.dbo.EmployeeDemographics emp
--JOIN SQL.dbo.EmployeeSalary sal
--	ON emp.EmployeeID = sal.EmployeeID
--GROUP BY JobTitle

--SELECT *
--FROM #temp_Employee2

/*
String Functions - TRIM, LTRIM, RTRIM
*/

--Drop Table EmployeeErrors

--CREATE TABLE EmployeeErrors ( 
--EmployeeID varchar(50),
--FirstName varchar(50),
--LastName varchar(50)
--)

--INSERT INTO EmployeeErrors VALUES
--('1001	', 'Luis', 'Mora'),
--('1002', 'Renan', 'Acevedo'),
--('1003	', 'Jorge', 'Salas ')

--SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

--SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

--SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
--FROM EmployeeErrors

/*
REPLACE
*/

--SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
--FROM EmployeeErrors

/*
SUBSTRING
*/

--SELECT SUBSTRING(FirstName, 1, 3)
--FROM EmployeeErrors

/*
UPPER and LOWER
*/

--SELECT FirstName, LOWER(FirstName)
--FROM EmployeeErrors

--SELECT FirstName, UPPER(FirstName)
--FROM EmployeeErrors

/*
Stored Procedures
*/

--CREATE PROCEDURE TEST AS
--SELECT *
--FROM SQL.dbo.EmployeeDemographics

--EXEC TEST

/*
Subqueries
*/

--SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM SQL.dbo.EmployeeSalary) AS AllAvgSalary
--FROM SQL.dbo.EmployeeSalary

-- How to do it with PARTITION BY
--SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
--FROM SQL.dbo.EmployeeSalary

-- Why GROUP BY doesn't work
--SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
--FROM SQL.dbo.EmployeeSalary
--GROUP BY EmployeeID, Salary
--ORDER BY 1, 2

-- Subquery in FROM
--SELECT a.EmployeeID, AllAvgSalary
--FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
--	FROM EmployeeSalary) a

--Subquery in WHERE
--SELECT EmployeeID, JobTitle, Salary
--FROM EmployeeSalary
--WHERE EmployeeID IN (
	--SELECT *
	--FROM SQL.dbo.EmployeeDemographics)
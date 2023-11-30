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

/*
Where Statement
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

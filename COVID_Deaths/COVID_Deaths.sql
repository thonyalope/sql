/*
COVID Data Exploration 
*/

SELECT *
FROM dbo.CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 3,4

--Select Data that we are going to be starting with
SELECT location, date, new_cases, total_deaths, population
FROM dbo.CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 1,2

--Total Cases vs Total Deaths
SELECT location, date, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
FROM dbo.CovidDeaths
WHERE location LIKE '%states%'
AND continent IS NOT NULL
ORDER BY 1,2
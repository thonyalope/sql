/*
COVID Data Exploration 
*/

SELECT *
FROM dbo.CovidDeaths
WHERE continent IS NOT NULL
ORDER BY 3,4
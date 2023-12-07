/*
Cleaning Data in SQL Queries
*/

SELECT *
FROM dbo.NashvilleHousing

--Standardize Date Format
SELECT saleDateConverted, CONVERT(Date, SaleDate)
FROM dbo.NashvilleHousing

UPDATE NashvilleHousing
SET SaleDate = CONVERT(Date, SaleDate)

--If it doesn't Update properly
ALTER TABLE NashvilleHousing
Add SaleDateConverted Date;

Update NashvilleHousing
SET SaleDateConverted = CONVERT(Date, SaleDate)

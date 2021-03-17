USE AdventureWorks2019
GO
SELECT * 
FROM HumanResources.Department 
WHERE GroupName LIKE '%Research%' 
ORDER BY DepartmentID DESC
GO 

USE AdventureWorks2019
GO
SELECT BusinessEntityID, JobTitle, BirthDate, Gender
FROM HumanResources.Employee
WHERE NationalIDNumber BETWEEN 500000000 AND 1000000000
GO

USE AdventureWorks2019
GO
SELECT BusinessEntityID, JobTitle, BirthDate , Gender
FROM HumanResources.Employee
WHERE YEAR(BirthDate) IN ('1980','1990')
GO

USE AdventureWorks2019
GO
SELECT BusinessEntityID, ShiftID
FROM HumanResources.EmployeeDepartmentHistory
GROUP BY BusinessEntityID, ShiftID
GO

USE AdventureWorks2019
GO
SELECT BusinessEntityID, ShiftID
FROM HumanResources.EmployeeDepartmentHistory
GROUP BY BusinessEntityID, ShiftID
HAVING COUNT(BusinessEntityID)>=2 AND COUNT(ShiftID)>=2
GO

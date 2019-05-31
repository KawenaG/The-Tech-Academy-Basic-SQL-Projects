SELECT * FROM Sales.Customer

USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.uspGetPerson @FName nvarchar(30) = NULL, @LName nvarchar(60) = NULL
AS
SELECT Person.FirstName, Person.LastName, Person.PersonType
FROM Person.Person AS Person
INNER JOIN
	Person.PersonPhone AS Phone
ON	Person.BusinessEntityID = Phone.BusinessEntityID
	AND Phone.PhoneNumberTypeID = 3
RIGHT JOIN Sales.Customer AS Customer
	ON Customer.CustomerID = Customer.StoreID
ORDER BY Person.LastName

DROP PROC dbo.uspGetPerson
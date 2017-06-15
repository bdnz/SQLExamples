
CREATE PROCEDURE SEARCH_CUSTOMERS
	@LastName varchar(50),
	@FirstName varchar(10),
	@EMailAddress varchar(50),
	@OrderID INT
AS
DECLARE @LastOrder TABLE 
(	LastName varchar(50),
	FirstName varchar(10),
	EmailAddress varchar(50),
	OrderId INT
 )	
INSERT @LastOrder

SELECT
	C.LastName,
	C.FirstName,
	C.EmailAddress,
	O.OrderID
FROM
	Customer C LEFT JOIN [Order ]O
	ON C.CustomerID = O.CustomerID
	LEFT JOIN @LastOrder LO 
	ON LO.OrderId = O.OrderID

WHERE 
	(
		(C.LastName LIKE '%'+@LastName+'%') 
		OR 
		(C.FirstName LIKE '%'+@LastName+'%')
	)
	AND 
	(
		(C.LastName LIKE '%'+@FirstName+'%') 
		OR 
		(C.FirstName LIKE '%'+@FirstName+'%')
	) 
GROUP BY
	O.OrderDate;
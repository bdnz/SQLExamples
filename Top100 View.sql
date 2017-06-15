CREATE VIEW Top100_vw
AS
WITH Top100Customers(FirstName, LastName, EmailAddress, TotalSpent, RANK) AS
(	SELECT Top 100 
		[Last Name],
		[First Name],
		[Email Address],
		SUM(ROUND([Total Price], 2)),
		RANK() OVER (ORDER BY [Total Price] DESC)
	FROM
		[dbo].[Customer Table] INNER JOIN [dbo].[Order Table] O
		ON C.CustomerID = O.[CustomerID]
		LEFT JOIN OrderDetails OD
		ON O.OrderID = OD.OrderID 
	 
	WHERE OrderDate LIKE '2012%'
	GROUP BY
		[Total Price],
		[Last Name],
		[First Name],
		[Email Address]
)
SELECT *
FROM
	Top100Customers;
	
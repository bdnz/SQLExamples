CREATE VIEW Least_Popular_vw
AS
SELECT Top 10
	P.[Product Name],
	Category,
	COUNT(OD.[Product Name]) AS TotalQuantityOrdered,
	P.ProductID
		
FROM
	OrderDetails OD INNER JOIN [dbo].[Product Table] P
	ON OD.ProductID = P.ProductID
WHERE P.[Product Name] != ''
GROUP BY
	P.[Product Name],
	Category,
	P.ProductID
ORDER BY COUNT(P.[Product Name]) ASC;

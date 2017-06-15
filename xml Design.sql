
ALTER TABLE [dbo].[Customer Table]
	ADD OrderHistory XML
GO


CREATE PROCEDURE XML_Added
	@CustomerID int, 
	@OrderHistory XML
AS
	UPDATE [dbo].[Customer Table]
	SET [OrderHistory] = @OrderHistory
WHERE
	CustomerID = @CustomerID
GO

ALTER PROCEDURE Get_History
	@CustomerID INT
AS
SELECT
	FirstName 'FirstName',
	LastName 'LastName',
	EmailAddress 'EmailAddress',
	OrderDetails 'OrderDetails',
	ProductID 'ProductID',
	ProductName 'ProductName',
	O.OrderID 'OrderID',
	Quantity 'Quantity',
	TotalPrice 'TotalPrice'
FROM	
	Customer C INNER JOIN [Order ]O
	ON C.CustomerID = O.CustomerID
	LEFT JOIN OrderDetails OD
	ON O.OrderID = OD.OrderID
WHERE 
	C.CustomerID = @CustomerID

FOR XML PATH('OrdersHistory'), Root('OrderHistory');

EXEC Get_History @CustomerID = 321
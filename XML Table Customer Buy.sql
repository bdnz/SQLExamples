CREATE FUNCTION XML_Table 
(@XML XML)

RETURNS @Customer_Buy TABLE
(
	FirstName varchar(50),
	LastName varchar(10),
	ProductName varchar(50),
	TotalPrice Money,
	EmailAddress varchar(100),
	OrderDetails INT,
	ProductID INT,
	Quantity INT,
	OrderID INT
	--Order Date date,
	--Total Price money,
	
)

AS
BEGIN
INSERT @Customer_Buy

SELECT
	FirstName = PurchaseHistory.value('(FirstName)[1]','varchar(255)'),
	LastName = PurchaseHistory.value('(LastName)[1]', 'varchar(255)'),
	EmailAddress = PurchaseHistory.value('(EmailAddress)[1]', 'varchar(255)'),
	OrderDetails = PurchaseHistory.value('(OrderDetails)[1]', 'INT'),
	ProductID = PurchaseHistory.value('(ProductID)[1]', 'INT'),
	ProductName = PurchaseHistory.value('(ProductName)[1]', 'varchar(255)'),
	OrderID = PurchaseHistory.value('(OrderID)[1]', 'INT'),
	Quantity = PurchaseHistory.value('(Quantity)[1]', 'INT'),
	TotalPrice = PurchaseHistory.value('(TotalPrice)[1]', 'Money')

FROM
	@XML.nodes('/OrderHistory/OrdersHistory') AS XTbl(PurchaseHistory)
RETURN	
END
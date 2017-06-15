
CREATE PROCEDURE CUSTOMER_TABLE_INSERT
	@CustomerID INT,
	@FirstName  varchar(50),
	@LastName nchar(10),
	@EmailAddress varchar(50) 
	
AS
BEGIN
	INSERT INTO [dbo].[Customer Table]
		([CustomerID], [First Name], [Last Name], [Email Address])
		VALUES
			(@CustomerID, @FirstName, @LastName, @EmailAddress)
END;
GO


CREATE PROCEDURE INVENTORY_TABLE_INSERT
	@InventoryID INT,
	@ProductID INT,
	@ProductName varchar(50),
	@QunatityOnHand INT

AS
BEGIN
	INSERT INTO [dbo].[Inventory Table]
		([InventoryID], [ProductID], [Product Name], [Quantity On Hand])
		VALUES
			(@InventoryID, @ProductID, @ProductName, @QunatityOnHand)
END;
GO

CREATE PROCEDURE ORDER_TABLE_INSERT
	@OrderID INT,
	@OrderDate date,
	@CustomerID INT

AS
BEGIN
	INSERT INTO [dbo].[Order Table]
		(OrderID, OrderDate, CustomerID)
		VALUES(@OrderID, @OrderDate, @CustomerID)
END;
GO

CREATE PROCEDURE ORDER_DETAILS_TABLE_INSERT
	@OrderDetails INT,
	@ProductID INT,
	@ProductName varchar(50),
	@OrderID INT,
	@Quantity INT,
	@TotalPrice money
AS
BEGIN
	INSERT INTO OrderDetails
		([OrderDetails], [ProductID], [Product Name], [OrderID], [Quantity], [Total Price])
		VALUES(@OrderDetails, @ProductID, @ProductName, @OrderID, @Quantity, @TotalPrice)
END;
GO

CREATE PROCEDURE PRODUCT_TABLE_INSERT
	@ProductID INT,
	@ProductName varchar(50),
	@Category varchar(50)
AS
BEGIN
	INSERT INTO [dbo].[Product Table]
		([ProductID], [Product Name], [Category])
		VALUES(@ProductID, @ProductName, @Category)
END;
GO

CREATE PROCEDURE SHIPPING_TABLE_INSERT
	@ShippingID INT,
	@OrderID INT,
	@Address1 varchar(50),
	@City varchar(50),
	@State varchar(50),
	@Zip varchar(50)
AS
BEGIN
	INSERT INTO [dbo].[Shipping Table]
		([ShippingID], [OrderID], [Address 1], [City], [State], [Zip])
		VALUES(@ShippingID, @OrderID, @Address1, @City, @State, @Zip)
END;
GO
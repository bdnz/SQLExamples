
CREATE PROCEDURE UPDATE_CUSTOMER
	@CustomerID INT,
	@FirstName  varchar(50),
	@LastName nchar(10),
	@EmilAddress varchar(50)
AS
BEGIN
	UPDATE [dbo].[Customer Table]
	SET [First Name] = @FirstName,
		[Last Name] = @LastName,
		[Email Address] = @EmilAddress
	WHERE
		[CustomerID] = @CustomerID
END
GO

CREATE PROCEDURE UPDATE_INVENTORY
	@InventoryID INT,
	@ProductID INT,
	@ProductName varchar(50),
	@QunatityOnHand INT
AS	
BEGIN
	UPDATE [dbo].[Inventory Table]
	SET [ProductID] = @ProductID,
		[Product Name] = @ProductName,
		[Quantity On Hand] = @QunatityOnHand
	WHERE
		[InventoryID] = @InventoryID
END
GO

CREATE PROCEDURE UPDATE_ORDER
	@OrderID INT,
	@OrderDate date,
	@CustomerID INT
AS
BEGIN
	UPDATE [dbo].[Order Table]
	SET [OrderDate] = @OrderDate,
		[CustomerID] = @CustomerID
	WHERE
		[OrderID] = @OrderID
END
GO


CREATE PROCEDURE UPDATE_ORDER_DETAILS
	@OrderDetails INT,
	@ProductID INT,
	@ProductName varchar(50),
	@OrderID INT,
	@Quantity INT,
	@TotalPrice money
AS
BEGIN
	UPDATE [dbo].[OrderDetails]
	SET 
		[ProductID] = @ProductID,
		[Product Name] = @ProductName,
		[Quantity] = @Quantity,
		[Total Price] = @TotalPrice
	WHERE
		[OrderID] = @OrderID
END
GO

CREATE PROCEDURE UPDATE_PRODUCT
	@ProductID INT,
	@ProductName varchar(50),
	@Category varchar(50)
AS
BEGIN
	UPDATE [dbo].[Product Table]
	SET [Product Name] = @ProductName,
		[Category] = @Category
	WHERE
		[ProductID] = @ProductID
END
GO

CREATE PROCEDURE UPDATE_SHIPPING
	@ShippingID INT,
	@OrderID INT,
	@Address1 varchar(50),
	@City varchar(50),
	@State varchar(50),
	@Zip varchar(50)
AS
BEGIN
	UPDATE [dbo].[Shipping Table]
	SET [OrderID] = @OrderID,
		[Address 1] = @Address1,
		[City] = @City,
		[State] = @State,
		[Zip] = @Zip
	WHERE
		[ShippingID] = @ShippingID
END
GO
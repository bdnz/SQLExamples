

CREATE PROCEDURE CREATE_DATE

@CreateDate varchar(50)
AS

ALTER Table [dbo].[Customer Table]
	ADD CustomerCreateDate datetime 
	NOT NULL 
	DEFAULT ('1/1/1950');
GO

ALTER Table [dbo].[Inventory Table]
	ADD InventoryCreateDate datetime 
	NOT NULL 
	DEFAULT ('1/1/1950');
GO

ALTER Table [dbo].[Order Table]
	ADD OrderCreateDate datetime 
	NOT NULL 
	DEFAULT ('1/1/1950');
GO

ALTER Table [dbo].[OrderDetails]
	ADD OrderDetailsCreateDate datetime 
	NOT NULL 
	DEFAULT ('1/1/1950')
GO

ALTER Table [dbo].[Product Table]
	ADD ProductCreateDate datetime 
	NOT NULL 
	DEFAULT ('1/1/1950')
GO

ALTER Table [dbo].[Shipping Table]
	ADD ShippingCreateDate datetime 
	NOT NULL 
	DEFAULT ('1/1/1950')
GO


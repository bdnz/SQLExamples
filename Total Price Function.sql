CREATE FUNCTION Total_Price


(@OrderID INT)

RETURNS @TotalPrice 

Table
(	OrderId INT,
	TotalPrice Money
)
AS

BEGIN

	INSERT @TotalPrice
	SELECT

		OrderID,
		[Total Price]
	FROM

		OrderDetails
	WHERE

		OrderID = @OrderID

RETURN

END
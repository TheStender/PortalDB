CREATE PROCEDURE [dbo].[spOrders_GetByID]
	@OrderID int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[OrderID], 
		[OrderNumber], 
		[DateOrdered], 
		[CustomerName], 
		[CustomerAddress]
	FROM dbo.Orders
	WHERE OrderID = @OrderID;

END
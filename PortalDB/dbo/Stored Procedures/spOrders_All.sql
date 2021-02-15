CREATE PROCEDURE [dbo].[spOrders_All]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[OrderID], 
		[OrderNumber], 
		[DateOrdered], 
		[CustomerName], 
		[CustomerAddress]
	FROM dbo.Orders;

END

CREATE PROCEDURE [dbo].[spOrderLines_All]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[OrderLineID], 
		[OrderID], 
		[PartID], 
		[QTY], 
		[Price] 
	FROM OrderLines;

END
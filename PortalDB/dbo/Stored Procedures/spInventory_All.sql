CREATE PROCEDURE [dbo].[spInventory_All]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[InventoryID], 
		[PartID], 
		[BinID], 
		[QTY]
	FROM PartInventory;

END
CREATE PROCEDURE [dbo].[spInventory_GetByBinID]
	@BinID int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[InventoryID], 
		[PartID], 
		[BinID], 
		[QTY]
	FROM dbo.PartInventory
	WHERE BinID = @BinID;

END

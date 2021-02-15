CREATE PROCEDURE [dbo].[spInventory_GetByPartID]
	@PartID int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[InventoryID], 
		[PartID], 
		[BinID], 
		[QTY]
	FROM dbo.PartInventory
	WHERE PartID = @PartID;

END

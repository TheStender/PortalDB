CREATE PROCEDURE [dbo].[spParts_GetByID]
	@PartID int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[PartID], 
		[PartName], 
		[PartDescription], 
		[Price]
	FROM dbo.Parts
	WHERE PartID = @PartID;

END

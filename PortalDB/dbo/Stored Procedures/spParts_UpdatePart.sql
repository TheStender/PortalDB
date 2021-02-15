CREATE PROCEDURE [dbo].[spParts_UpdatePart]
	@PartID int,
	@PartName nvarchar(50),
	@PartDescription nvarchar(100),
	@Price money
AS
BEGIN

	SET NOCOUNT ON;

	UPDATE dbo.Parts
	SET 
		PartName = @PartName,
		PartDescription = @PartDescription,
		Price = @Price
	WHERE PartID = @PartID;

END
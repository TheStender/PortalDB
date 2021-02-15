CREATE PROCEDURE [dbo].[spParts_Delete]
	@PartID int
AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM dbo.Parts
	WHERE PartID = @PartID;

END

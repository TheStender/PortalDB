CREATE PROCEDURE [dbo].[spParts_All]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		PartID, 
		PartName, 
		PartDescription, 
		Price
	FROM dbo.Parts;

END
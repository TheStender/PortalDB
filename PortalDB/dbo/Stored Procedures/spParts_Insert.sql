CREATE PROCEDURE [dbo].[spParts_Insert]
	@PartName nvarchar(50),
	@PartDescription nvarchar(100),
	@Price money = NULL,
	@PartID int output
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO dbo.Parts (PartName, PartDescription, Price)
	VALUES (@PartName, @PartDescription, @Price);

	SET @PartID = SCOPE_IDENTITY();

END
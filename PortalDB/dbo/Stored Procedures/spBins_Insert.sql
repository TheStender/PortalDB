CREATE PROCEDURE [dbo].[spBins_Insert]
	@BinName nvarchar(50),
	@BinID int output
AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO dbo.Bins (BinName)
	VALUES (@BinName);

	SET @BinName = SCOPE_IDENTITY();

END

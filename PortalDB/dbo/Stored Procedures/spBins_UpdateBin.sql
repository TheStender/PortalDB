CREATE PROCEDURE [dbo].[spBins_UpdateBin]
	@BinID int,
	@BinName nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	UPDATE dbo.Bins
	SET 
		BinName = @BinName
	WHERE BinID = @BinID;

END

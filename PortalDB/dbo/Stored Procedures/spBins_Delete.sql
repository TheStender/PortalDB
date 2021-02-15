CREATE PROCEDURE [dbo].[spBins_Delete]
	@BinID int
AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM dbo.Bins
	WHERE BinID = @BinID;

END
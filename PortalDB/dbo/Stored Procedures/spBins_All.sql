CREATE PROCEDURE [dbo].[spBins_All]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT 
		[BinID], 
		[BinName] 
	FROM Bins;

END
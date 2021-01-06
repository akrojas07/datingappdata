-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 12/23/20
-- Description:	Procedure to pull record from match table by match id
-- =============================================
CREATE PROCEDURE dbo.GetRecordsFromMatchesTableByMatchId
	-- Add the parameters for the stored procedure here
	@MatchId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select *
	From dbo.Matches
	Where id = @MatchId
END
GO

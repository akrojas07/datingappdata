-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 12/23/20
-- Description:	Procedure to pull records from match table by user id
-- =============================================
CREATE PROCEDURE dbo.GetRecordsFromMatchesTableByUserId
	-- Add the parameters for the stored procedure here
	@UserId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select *
	From dbo.Matches
	Where FirstUserId = @UserId OR SecondUserId = @UserId
END
GO

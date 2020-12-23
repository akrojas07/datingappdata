-- =============================================
-- Author:		Anakaren Rojas
-- Create date: 12/23/20
-- Description:	Procedure to pull all records from match table
-- =============================================
CREATE PROCEDURE dbo.GetAllRecordsFromMatchesTable
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select *
	From dbo.Matches
END
GO

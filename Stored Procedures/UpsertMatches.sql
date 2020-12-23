--- =============================================
-- Author:		Anakaren Rojas
-- Create date: 12/23/20
-- Description:	Procedure to upsert matches to matches table
-- =============================================
CREATE PROCEDURE dbo.UpsertMatches 
	-- Add the parameters for the stored procedure here
	@MatchChanges [dbo].[MatchChanges] readonly
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	merge dbo.Matches as [target]
	using @MatchChanges as src
	on [target].Id = src.MatchId


	when matched then
	update
	set [target].UpdatedDate = Sysdatetime(),
		[target].Liked = src.Liked,
		[target].[Matched] = src.[Matched]

	when not matched by target then 
	insert
	(
		FirstUserId,
		SecondUserId,
		Liked,
		[Matched],
		CreatedDate,
		UpdatedDate
	)
	values
	(
		src.FirstUserId,
		src.SecondUserId,
		src.Liked,
		src.[Matched],
		Sysdatetime(),
		Sysdatetime()
	)

	when not matched by source then
	delete;
END
GO

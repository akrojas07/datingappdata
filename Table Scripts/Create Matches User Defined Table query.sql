-- Create the data type
CREATE TYPE dbo.MatchesChanges AS TABLE 
(
	MatchId bigint NOT NULL, 
	FirstUserId bigint not null,
	SecondUserId bigint not null,
	Liked bit,
	[Matched] bit
)
GO

-- Create the data type
CREATE TYPE dbo.MatchChanges AS TABLE 
(
	MatchId bigint NOT NULL, 
	FirstUserId bigint not null,
	SecondUserId bigint not null,
	Liked bit,
	[Matched] bit,
	CreatedDate date,
	UpdatedDate date
)
GO

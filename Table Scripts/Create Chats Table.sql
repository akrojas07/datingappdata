Create table dbo.Chats 
(
	Id bigint not null primary key identity(1,1),
	MatchId bigint not null foreign key references dbo.Matches(Id),
	FirstUserId bigint not null foreign key references dbo.Users(Id),
	SecondUserId bigint not null foreign key references dbo.Users(Id),
	[Message] varchar(max),
	DateSent datetime
);
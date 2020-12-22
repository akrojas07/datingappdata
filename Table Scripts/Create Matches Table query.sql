create table dbo.Matches
(
	Id bigint not null primary key identity(1,1),
	FirstUserId bigint not null foreign key references dbo.Users(Id),
	SecondUserId bigint not null foreign key references dbo.Users(Id),
	Liked bit,
	[Matched] bit
);
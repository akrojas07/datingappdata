create table dbo.Users(
	Id bigint not null primary key identity(1,1), 
	Username varchar(255),
	[Password] varchar(255),
	FirstName varchar(255),
	LastName varchar(255),
	PhotoId bigint,
	[Location] varchar(255),
	Gender bit, 
	Interests varchar(255),
	About varchar(255),
	[Status] bit,
	CreatedDate datetime,
	UpdatedDate datetime
);
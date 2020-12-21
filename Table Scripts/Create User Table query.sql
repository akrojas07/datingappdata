create table dbo.Users(
	Id bigint not null primary key identity(1,1), 
	Username varchar(255),
	[Password] varchar(255),
	FirstName varchar(255),
	LastName varchar(255),
	PhotoId bigint,
	CreatedDate datetime,
	UpdatedDate datetime
);
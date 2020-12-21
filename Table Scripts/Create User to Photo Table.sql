create table dbo.UserToPhoto
(
	Id bigint not null primary key identity(1,1), 
	UserId bigint not null foreign key references dbo.Users(id),
	PhotoId bigint not null 
);
create database demo_user
go
use demo_user
go
create table Users(
	id INT PRIMARY KEY IDENTITY(1,1),
	username NVARCHAR(120) NOT NULL, -- Tên, không cho phép NULL
	email NVARCHAR(220) NOT NULL, -- Email, không cho phép NULL
	country NVARCHAR(120) NULL, -- Quốc gia, cho phép NULL
	role NVARCHAR(50) NOT NULL, -- Vai trò, không cho phép NULL
	status BIT NOT NULL, -- Trạng thái, không cho phép NULL
	password NVARCHAR(255) NOT NULL
);
go
insert into Users (username, email, country, role, status, password)
values
	(N'Chi Pheo', 'chi@gmail.com', N'Viet Nam', N'user', 1, 'abc@123'),
	(N'Tu Hai', 'hai@fpt.edu.vn', N'Canada', N'user', 1, 'abc@123'),
	(N'John Doe', 'john.doe@example.com', N'USA', N'Admin', 1, 'abc@123'),
	(N'Jane Smith', 'jane.smith@example.com', N'UK', N'User', 1, 'abc@123'),
	(N'Mike Brown', 'mike.brown@example.com', NULL, N'Moderator', 0, 'abc@123'),
	(N'Sarah Johnson', 'sarah.johnson@example.com', N'Canada', N'User', 1, 'abc@123'),
	(N'Emily Davis', 'emily.davis@example.com', N'Australia', N'Admin', 0, 'abc@123');
go
select * from Users
go

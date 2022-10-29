Create Database Car_Rental_System

Create Table LogInPage(
Username varchar(50) not null,
Password varchar(20) not null
)

Insert into LogInPage 
values('Rahim12','A12345')

Alter Table LogInPage ADD Email_Address varchar(100)

Select * from LogInPage
Delete from LogInPage where Username = '' and Password = '' and Email_Address = ''



Create Table Booking1(
Contact_no varchar(50) Primary KEY,
Destiation varchar(50),
Starting_Date date,
Return_Date date,
Duration int,
)
Alter Table Booking1 ADD Booking_ID int IDENTITY(1,1)
Select * from Booking1

Create Table Customer(
Customer_Id int IDENTITY(1,1) PRIMARY KEY,
Customer_Name varchar(50),
Contact_no varchar(50) foreign key references Booking1(Contact_no),
Driving_Lisense varchar(50),
NID_no varchar(50),
Address varchar(50)
)

Select * from Booking1
--Select Contact_no from Booking1 order by Booking_ID DESC


/*Create Table Car_Info(
Car_Id int IDENTITY(1,1) PRIMARY KEY,
Model varchar(50),
Type varchar(50),
Color varchar(50),
--Contact_no varchar(50) foreign key references Booking1(Contact_no),

)*/


--Alter Table [dbo].[Car_Info] Drop Constraint [FK__Car_Info__Contac__49C3F6B7]

--Select * from Car_Info

Create Table Car_Info1(
Car_Id int IDENTITY(1,1) PRIMARY KEY,
Model varchar(50),
Type varchar(50),
Color varchar(50),
)


Delete from Car_Info1 



Insert Into Car_Info1 values ('Allion(Toyota)','Sedan','Silver'),
							('Civic(Honda)','Sedan','Black'),
							('Odyssey(Honda)','Minivan','White'),
							('HiAce(Toyota)','Micro','Black'),
							('HiAce(Toyota)','Micro','White'),
							('Pajero(Mitsubishi)','SUV','Black'),
							('Pajero(Mitsubishi)','SUV','Silver'),
							('Pajero(Toyota)','SUV','Silver'),
							('Fortuner(Toyota)','SUV','Black'),
							('BMW M340i','Sedan','Blue')

Select * from Car_Info1

Create Table Available(
Available_Id int Identity(11,1) PRIMARY KEY,
Available varchar(10) NULL Default 'Yes',
Car_Id int foreign key references Car_Info1(Car_Id)
)

Insert Into Available (Car_Id) values (11),
							(12),(13),(14),(15),(16),(17),(18),(19),(20)

Select * from Available
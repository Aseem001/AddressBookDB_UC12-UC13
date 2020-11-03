/*UC 12 : Implemetation of E-R concept*/

use addressbook_service;

--Creating contact table
create table contact(
FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
PhoneNo bigint not null,
Email varchar(250) not null,
primary key(FirstName,LastName)
);
--Adding data into the contact table
insert into contact values
('Shweta','Tripathi','House no 5',7765434567,'shwetatripathi@gmail.com'),
('Geeta','Sharma','Vasco Da Gama',8765434567,'geetasharma@gmail.com'),
('Rahul','Kumar','Una',5556667778,'rahulkumar@gmail.com'),
('Akash','Sharma','NIT Kurukshetra',7896754345,'akashsharma@gmail.com'),
('Narendra','Modi','House No 5, Vadodara',2334667850,'narendramodi@rediff.com'),
('Ashok','Agarwal','Thanesar',5676899456,'ashokagarwal@gmail.com'),
('Mohit','Raina','Street 2',9876545678,'mohitraina@rediffmail.com'),
('Akash','Gupta','NIT Kurukshetra',4563789876,'akashgupta@gmail.com'),
('Shyam','Garg','NIT Kurukshetra',6785674567,'shyamgarg@rediffmail.com'),
('Akash','Garg','NIT Kurukshetra',6785467345,'akashgarg@gmail.com');

--Creating table contact_address
create table contact_address(
FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
foreign key(FirstName,LastName) references contact(FirstName,LastName)
);
--Inserting values
insert into contact_address values
('Shweta','Tripathi','House no 5','Sonipat','Haryana',137667),
('Geeta','Sharma','Vasco Da Gama','Panaji','Goa',443256),
('Rahul','Kumar','Una','Shimla','Himachal Pradesh',173526),
('Akash','Sharma','NIT Kurukshetra','Kurukshetra','Haryana',136119),
('Narendra','Modi','House No 5, Vadodara','Vadodara','Gujrat',665434),
('Ashok','Agarwal','Thanesar','Kurukshetra','Haryana',136119),
('Mohit','Raina','Street 2','Panipat','Haryana',138675),
('Akash','Gupta','NIT Kurukshetra','Kurukshetra','Haryana',136119),
('Shyam','Garg','NIT Kurukshetra','Kurukshetra','Haryana',136119),
('Akash','Garg','NIT Kurukshetra','Kurukshetra','Haryana',136119);

--Creating table type
create table type(
TypeCode varchar(3) not null primary key,
ContactType varchar(100) not null,
);
--Adding data into the table type
insert into type values
('FRI','FRIENDS'),
('PRO','PROFESSION'),
('FAM','FAMILY'),
('EMG','EMERGENCY');

--Creating table contact_type
create table contact_type(
FirstName varchar(100) not null,
LastName varchar(100),
TypeCode varchar(3) not null foreign key references type(TypeCode),
foreign key(FirstName,LastName) references contact(FirstName,LastName)
);
--Adding data into the table contact_type
insert into contact_type values
('Akash','Gupta','FRI'),
('Akash','Gupta','FAM'),
('Ashok','Agarwal','PRO'),
('Narendra','Modi','PRO'),
('Mohit','Raina','PRO'),
('Akash','Garg','FRI'),
('Akash','Sharma','FRI'),
('Geeta','Sharma','FRI'),
('Shweta','Tripathi','PRO'),
('Shyam','Garg','FRI'),
('Rahul','Kumar','FRI');

--Creating table addressbook
create table addressbookList(
AddressBookName varchar(100) not null primary key,
);
--Adding values into table
insert into addressbookList values
('ASEEM'),
('KOHLI'),
('DHONI');

--Creating table addressbookname storing bookname for each contact
create table addressbookmap(
FirstName varchar(100) not null,
LastName varchar(100),
AddressBookName varchar(100) not null foreign key references addressbookList(AddressBookName),
foreign key(FirstName,LastName) references contact(FirstName,LastName)
);
--Adding data into table
insert into addressbookmap values
('Rahul','Kumar','KOHLI'),
('Akash','Gupta','ASEEM');

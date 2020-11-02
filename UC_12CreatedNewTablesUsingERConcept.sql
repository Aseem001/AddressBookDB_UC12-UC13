/*UC 12 : Implemetation of E-R concept*/

use addressbook_service;

--Creating contact table
create table contact(
FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo bigint not null,
Email varchar(250) not null,
primary key(FirstName,LastName)
);
--Adding data into the contact table
insert into contact values
('Shweta','Tripathi','House no 5','Sonipat','Haryana',137667,7765434567,'shwetatripathi@gmail.com'),
('Geeta','Sharma','Vasco Da Gama','Panaji','Goa',443256,8765434567,'geetasharma@gmail.com'),
('Rahul','Kumar','Una','Shimla','Himachal Pradesh',173526,5556667778,'rahulkumar@gmail.com'),
('Akash','Sharma','NIT Kurukshetra','Kurukshetra','Haryana',136119,7896754345,'akashsharma@gmail.com'),
('Narendra','Modi','House No 5, Vadodara','Vadodara','Gujrat',665434,2334667850,'narendramodi@rediff.com'),
('Ashok','Agarwal','Thanesar','Kurukshetra','Haryana',136119,5676899456,'ashokagarwal@gmail.com'),
('Mohit','Raina','Street 2','Panipat','Haryana',138675,9876545678,'mohitraina@rediffmail.com'),
('Akash','Gupta','NIT Kurukshetra','Kurukshetra','Haryana',136119,4563789876,'akashgupta@gmail.com'),
('Shyam','Garg','NIT Kurukshetra','Kurukshetra','Haryana',136119,6785674567,'shyamgarg@rediffmail.com'),
('Akash','Garg','NIT Kurukshetra','Kurukshetra','Haryana',136119,6785467345,'akashgarg@gmail.com');

--Creating table contact_type
create table type(
SrNo int not null,
ContactType varchar(100) not null,
primary key(SrNo,ContactType)
);
--Adding data into the table type
insert into type values
(1,'FRIENDS'),
(2,'PROFESSION'),
(3,'FAMILY'),
(4,'EMERGENCY');

--Creating table contact_type
create table contact_type(
FirstName varchar(100) not null,
LastName varchar(100),
ContactType varchar(100) not null
);
--Adding data into the table contact_type
insert into contact_type values
('Akash','Gupta','FRIENDS'),
('Akash','Gupta','FAMILY');

--Creating table addressbook
create table addressbook(
SrNo int not null,
AddressBookName varchar(100) not null,
primary key(SrNo,AddressBookName)
);
--Adding values into table
insert into addressbook values
(1,'ASEEM'),
(2,'KOHLI'),
(3,'DHONI');

--Creating table addressbookname storing bookname for each contact
create table addressbookname(
FirstName varchar(100) not null,
LastName varchar(100),
AddressBookName varchar(100) not null
);
--Adding data into table
insert into addressbookname values
('Rahul','Kumar','KOHLI'),
('Akash','Gupta','ASEEM');

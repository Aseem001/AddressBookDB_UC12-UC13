/*UC 8 : Ability to retrieve entries sorted alphabetically by Person’s name for a given city*/

use addressbook_service;
/*Inserting more data into table*/
insert into address_book values
('Akash','Gupta','NIT Kurukshetra','Kurukshetra','Haryana',136119,4563789876,'akashgupta@gmail.com'),
('Shyam','Garg','NIT Kurukshetra','Kurukshetra','Haryana',136119,4563789865,'shyamgarg@rediffmail.com'),
('Akash','Sharma','NIT Kurukshetra','Kurukshetra','Haryana',136119,4563789876,'akashgupta@gmail.com');
select * from address_book;
/*Retrieve entries sorted alphabetically by name for Kurukshetra*/
select * from address_book where City='Kurukshetra' order by FirstName+LastName;
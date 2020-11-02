/*UC 11 : Ability to add person to both Friend and Family*/

use addressbook_service;
select * from address_book;
/*Adding the same person to both friend and family types*/
insert into address_book values
('Akash','Gupta','NIT Kurukshetra','Kurukshetra','Haryana',136119,4563789876,'akashgupta@gmail.com','Aseem','FAMILY');
/*Retrieving details of the duplicated contact*/
select * from address_book where FirstName='Akash' and LastName='Gupta';
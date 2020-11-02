/* UC 2 : Ability to create address book table */

use addressbook_service;
/*Creating address_book table*/
create table address_book
(FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo bigint not null,
Email varchar(250) not null
);
/*Retrieving data from table*/
select * from address_book;
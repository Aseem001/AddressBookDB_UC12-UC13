/*UC 6 : Ability to retrieve person belonging to a city or state from address book table*/

use addressbook_service;
select * from address_book;
/*Retrieve details of people belonging to either city Shimla or state Haryana*/
select * from address_book where State='Goa' or City='Shimla';
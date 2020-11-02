/*UC 5 : Ability to delete a person using person's name*/

use addressbook_service;
select * from address_book;
/*Delete contact with name Ram Kumar*/
delete from address_book where FirstName='Ram' and LastName='Kumar';
select * from address_book;
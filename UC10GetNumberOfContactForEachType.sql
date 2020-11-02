/*UC 10 : Ability to get number of contact persons i.e. count by type*/

use addressbook_service;
select * from address_book;

/*Getting number of contact persons for each ContactType*/
select ContactType,Count(ContactType) as NumberOfContacts from address_book group by ContactType;
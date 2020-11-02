/*UC 7 : Ability to understand the size of address book by City and State*/

use addressbook_service;
/*Inserting more data into table*/
insert into address_book values
('Shweta','Tripathi','House no 5','Sonipat','Haryana',137667,7765434567,'shwetatripathi@gmail.com'),
('Mohit','Raina','Street 2','Panipat','Haryana',138675,9876545678,'mohitraina@rediffmail.com');
select * from address_book;

/*Find size of address book by city*/
select City,count(City) as PeopleInCity from address_book group by City;
/*Find size of address book by State*/
select State,count(State) as PeopleInCity from address_book group by State;
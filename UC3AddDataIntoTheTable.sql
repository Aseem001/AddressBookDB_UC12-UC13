/*UC 3 : Ability to insert new contacts to addressbook */

use addressbook_service;
/*Insert data into table*/
insert into address_book values
('Ram','Kumar','NIT Kurukshetra,Thanesar','Kurukshetra','Haryana',136119,3342345678,'ramkumar@gmail.com'),
('Geeta','Sharma','Vasco Da Gama','Panaji','Goa',443256,8765434567,'geetasharma@gmail.com'),
('Rahul','Kumar','Una','Shimla','Himachal Pradesh',173526,5556667778,'rahulkumar@gmail.com'),
('Narendra','Modi','House No 5, Vadodara','Surat','Gujrat',665434,2334667850,'narendramodi@rediff.com'),
('Ashok','Agarwal','Thanesar','Kurukshetra','Haryana',136119,5676899456,'ashokagarwal@gmail.com');
select * from address_book;
create database AddressBookSystemServiceDB
use AddressBookSystemServiceDB
--[UC2]
create table AddressBook
(
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    address varchar(50) not null,
    city varchar(20),
    state varchar(20),
    zip int,
    phone_number varchar(10) not null
);


--[UC3]

insert into AddressBook values
('Laksh','Mehta','Ramnagar.','Khandwa','MP',450001,'8966049333'),
('Sumit','Patidar','Anand Nagar.','Khandwa','MP',450001,'9876563210'),
('Naman','Mathur','puliya.','Indore','MP',400001,'8976543210'),
('Aman','Rawat','jhanda choak.','Bhopal','MP',462024,'8755412345'),
('Saurabh','Sajwan',' ghantagher.','Kareli','MP',895761,'7856235620'),
('Gaurabh','Butola','kotewser.','Dehli','Delhi',895154,'9875141545');
select * from AddressBook


update AddressBook
set address = 'Kareli jana hai'
where first_name = 'Laksh' AND last_name = 'Mehta' ;


delete from AddressBook
where first_name = 'Gaurabh' AND last_name = 'Butola';

select * from AddressBook 
where city = 'Khandwa';
select * from AddressBook 
where state = 'MP';


--[UC7]
select city,COUNT(city) as total_count
from AddressBook 
group by city
select state,COUNT(state) as total_count
from AddressBook 
group by state



--[UC8]

select * from AddressBook 
where city = 'Khandwa'
order by first_name;


--[UC9]

Alter table Addressbook
ADD addressbook_name varchar(20) not null default 'AddressBook'; 

alter table Addressbook
add addresd_type varchar(20) not null default 'friends';

update Addressbook set state='MP' where city='Khandwa'

update Addressbook set addressbook_name='Addressbook1' where city='Rishikesh'
update Addressbook set addressbook_name='Addressbook2' where city='Ruderperyag'
update Addressbook set addressbook_name='Addressbook3' where city='Devperyag'
update Addressbook set addressbook_name='Addressbook4' where city='Kotdwar'
update Addressbook set addressbook_name='Addressbook5' where city='Dehradun'
select * from AddressBook
update Addressbook set addresd_type='family' where last_name='Mehta'
update Addressbook set addresd_type='profession' where last_name='Rawat'

select first_name , last_name from Addressbook where addressbook_name='Addressbook5'
select * from AddressBook where addresd_type='family'
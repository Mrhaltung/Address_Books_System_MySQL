create database Address_Book; --UC1 Ability to create a Address Book Service DataBase

--UC2 Ability to create a Address Book Table with first and last name, address, city, state, zipcode, phone number and email as its attributes
create table Address_Books(
Id int identity(1,1) primary key,
first_name varchar(255),
last_name varchar(255),
Address varchar(255),
City varchar(50),
State varchar(50),
ZipCode int,
Phone_No bigint,
Email_Id varchar(255)
);

select * from Address_Books;

--UC3 Insert contacts in table

insert into Address_Books values('Mr','Haltung','Anchleshwar','Chandrapur','Maharashtra',442401,9876543210,'mrhaltung7784@gmail.com');

insert into Address_Books values('Am','Jam','Islampur','Sangli','Maharashtra',410923,8727474329,'am@gmail.com');

insert into Address_Books values('Amir','Door','Lahore','Sangli','Maharashtra',310943,0965423464,'dipesh@gmail.com');

insert into Address_Books values('Kat','Noor','Gandhi Chowk ','Solapur','Maharashtra',411232,5783297382,'chandekar@gmail.com');

insert into Address_Books values('Virat','Kohli','Shivaji Chowk','Pune','Maharashtra',127431,9174829526,'chanda@gmail.com');

--UC4 Edit existing contact using name
UPDATE Address_Books SET first_name = 'Ranjeet' , last_name = 'Bhosale', Email_Id = 'ranjeet@gmail.com' where first_name = 'Am';

--UC5 Delete person using first name
delete from Address_Books where City = 'Sangli';

--UC6 Ability to retrieve person belonging to a city or state 
select * from Address_Books where City='Sangli';

--UC7 Count size of addressbook by city and state
select count(City) as TotalContact from Address_Books;  

--UC8 Ability to retrieve entries sorted  alphabetically by person's name for a given city
select * from Address_Books where State='Maharashtra' order by (first_name);
select * from Address_Books;

--UC9 Altering Address Book to add new columns, Address Book Name and Type of contacts
alter table Address_Books add addressBookType varchar(30), AddressBookName varchar(40);

update Address_Books set addressBookType = 'Friends' where City ='Sangli';

update Address_Books set addressBookName = 'BookRecords';

update Address_Books set addressBookType = 'Family' where last_name ='Noor';

update Address_Books set addressBookType = 'Profession' where addressBookType is null;

--UC10 Getting number of contact persons for each ContactType
select addressBookType, count(addressBookType) as NumberOfContacts from Address_Books group by addressBookType;

--UC11 Ability to add person to both Friend and Family
insert into Address_Books values('Ajay', 'Yadav','CSTM','Mumbai', 'Maharashtra', 214566,941144333, 'adhar@gmail.com','Family','BookRecords');

select * from Address_Books where first_name='Ajay' and last_name='Yadav';
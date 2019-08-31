create table user_details(
	uidai CHAR(12),
    fullname VARCHAR(25),
    dob date,
    phno CHAR(10),
    email VARCHAR(25),
    current_address varchar(100),
    create_date datetime,
    primary key (uidai),
    unique key (phno,uidai)
);

select * from user_details;

select * from mytable;

select distinct AREA from mytable;
	
update mytable set AREA='|India|Juhu|Vile Parle|East|' WHERE AREA='|India|Juhu|Vile ParleEast|';

alter table mytable add column owner_id char(12);
CREATE table contract(
contract_ID int auto_increment primary key,
owner_id char(12) not null,
tenant_id char(12) not null,
start_time datetime not null,
duration datetime not null,
rent int,
foreign key (owner_id) references user_details(uidai),
foreign key (tenant_id) references user_details(uidai)
);

CREATE TABLE transactions(
trans_ID int auto_increment primary key,
from_id char(12) not null,
to_id char(12) not null,
trans_time datetime not null,
amount int not null,
foreign key (from_id) references user_details(uidai),
foreign key (to_id) references user_details(uidai)
);
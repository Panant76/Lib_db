create table if not exists parking.parking(
id bigserial primary key,
type varchar(64) not null,
--free
--not free
name varchar(64),
address varchar(256) not null

);

--User_park
create table if not exists parking.customer(
id bigserial primary key,
login varchar(64) not null,
password varchar(256) not null,
first_name varchar(32),
last_name varchar (32) not null,
middle_name varchar(32),
phone_number int8 not null,
card_number int8,
role_id int4 not null,
foreign key (role_id) references parking.role_park (id)
);
--Role
create table if not exists parking.role_park(
id serial primary key,
r_name varchar(32)
);
insert into parking.role_park (r_name)
values 
('Director'),
('Administrator'),
('Employee'),
('Client');

--CAR
create table if not exists parking.car(
id bigserial primary key,
model varchar(64),
number varchar (16) not null,
weight float4 not null,
user_id int4 not null,
foreign key (user_id) references parking.customer (id)
);

--Parking Place
create table if not exists parking.parking_place(
floor int4 not null,
number int4 not null,
cost int4 not null,
parking_id int4 not null,
foreign key (car_id) references parking.car (id),
foreign key (parking_id) references parking.parking (id),
primary key (floor,number)
);

--Order
create table if not exists parking.order(
id bigserial primary key,
pp_floor int4 not null,
pp_number int4 not null,
date_from timestamp,
date_to timestamp not null,
overtime boolean not null,
user_id int4,
car_id int4 not null,
foreign key user_id references parking.customer(id),
foreign key car_id references parking.car(id),
foreign key (pp_floor,pp_number) references parking.parking_place (floor,number)
);



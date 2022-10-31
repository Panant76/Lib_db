create  table  if not exists  archive(
id bigserial primary key,
number int4 NOT null
);
create table  if not exists  author(
id bigserial primary key,
first_name varchar(32),
second_name varchar(32) NOT null,
middle_name varchar(32),
birthday date
);
create  table  if not exists  book_case(
id bigserial primary key,
number int4 NOT NULL,
ar_id int8 NOT NULL,
constraint ac_id_fk foreign key (ac_id) references archive(id)
);
create  table  if not exists  shelf(
id bigserial primary key,
number int4 NOT null,
bc_id int8 NOT null,
constraint bc_id_fk foreign key (bc_id) references book_case(id)
);
create  table  if not exists  book(
id bigserial primary key,
name varchar(32),
date timestamp,
produser varchar(32),
number int4 NOT null,
a_id int8 NOT null,
sh_id int8 NOT null,
constraint a_id_fk foreign key (a_id) references author(id),
constraint sh_id_fk foreign key (sh_id) references shelf(id)
);
create  table  if not exists  poem(
id bigserial primary key,
name varchar(32),
content text NOT null,
date timestamp,
a_id int8,
b_id int8,
constraint a_id_fk foreign key (a_id) references author(id),
constraint b_id_fk foreign key (b_id) references book(id)
);

 --drop table book cascade;


--alter table poem add column a_id int8;
--alter table poem add constraint b_id_fk foreign key (b_id) references book(id);


--alter table archive alter column number set not null;

--alter table book_case alter number set not null;
--alter table book_case alter ar_id set not null;

--alter table shelf alter number set not null;
--alter table shelf alter bc_id set not null;

--alter table book alter number set not null;
--alter table book alter name set not null;
--alter table book alter sh_id set not null;
--alter table book alter a_id set not null;

--alter table poem alter content set not null;

--alter table author alter second_name set not null;

insert into author values(nextval('author_id_seq'),'Anton','Panov','','18.05.1976');

insert into poem (name,content,date,a_id) values('Начало','Beginer','27.10.2022',1);







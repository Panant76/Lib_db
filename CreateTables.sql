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
constraint ar_id_fk foreign key (ar_id) references archive(id)
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

 





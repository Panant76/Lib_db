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
truncate shelf  restart identity cascade;
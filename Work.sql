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
--truncate shelf  restart identity cascade;
--
0. Разделить книги на несколько полок в разные хранилища
1. Выбрать всех авторов во втором хранилище
2. Выбрать произведения написанные в 18 веке из первого хранилища
3. Выбрать все произведения авторов,  родившихся в 19м веке и хранящиеся в хранилище номер 1
--1
select a.last_name  from author a where a.id in (select bc.id  from book_case bc where bc.ar_id=2)

--2
select p."name" ,p."date"  from poem p where p.date < '01.01.1900' and p.date > '01.01.1800' in 
(select book_id from book b where b.sh_id in
(select id from shelf s where s.bc_id in 
(select id from book_case bc where bc.ar_id=1))) ;

-- 2/1
select  poem.name
from archive  a, (((archive 
inner join book_case on archive.id = book_case.ar_id) 
inner join  shelf on book_case.id = shelf.bc_id) 
inner join book on shelf.id = book.sh_id)
inner join poem on book.id = poem.book_id
where poem.date<'1/1/1900' And poem.date>'1/1/1800' and a.number=1;
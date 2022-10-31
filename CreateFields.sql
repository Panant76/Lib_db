--AUTHOR
insert into author values (nextval('author_id_seq'), 'Лев','Толстой','Николаевич');
insert into author values (nextval('author_id_seq'), 'Энест','Хемингуэй');
insert into author values (nextval('author_id_seq'), 'Брэм','Стокер');
insert into author values (nextval('author_id_seq'), 'Мэри','Шелли');
insert into author values (nextval('author_id_seq'), 'Джордж','Оруэлл');
insert into author values (nextval('author_id_seq'), 'Говард','Лавкрафт');
insert into author values (nextval('author_id_seq'), 'Эдгар','По','Аллан');
insert into author values (nextval('author_id_seq'), 'Стивен','Кинг');
insert into author values (nextval('author_id_seq'), 'Густав','Майринк');
--POEM
insert into poem (name, content, date, a_id, book_id) values ('Анна Коренина','Anna Corenina', '24.02.1870', 1,1);
insert into poem (name, content, date, a_id, book_id) values ('Старик и море','the Old man and the Sea', '24.02.1952', 2,2);
insert into poem (name, content, date, a_id, book_id) values ('Зелёные холмы Африки','Green Hills of Africa', '24.02.1935', 2,2);
insert into poem (name, content, date, a_id, book_id) values ('Дра́кула','Dracule', '24.02.1897', 3,3);
insert into poem (name, content, date, a_id, book_id) values ('Франкенштейн','Франкенштейн, или Современный Прометей', '24.02.1818', 4,4);
insert into poem (name, content, date, a_id, book_id) values ('1984','1984', '24.02.1949', 5,5);
insert into poem (name, content, date, a_id, book_id) values ('Скотный двор','Скотный двор', '24.02.1945', 5,5);
insert into poem (name, content, date, a_id, book_id) values ('Крысы в стенах','Крысы в стенах', '24.02.1923', 6,6);
insert into poem (name, content, date, a_id, book_id) values ('Золотой жук','Золотой жук', '24.02.1843', 7,7);
insert into poem (name, content, date, a_id, book_id) values ('Безнадёга','Безнадёга', '24.02.1996', 8,8);
insert into poem (name, content, date, a_id, book_id) values ('Оно','IT', '24.02.1986',8,8 );
insert into poem (name, content, date, a_id, book_id) values ('Голем','Голем', '24.02.1914', 9,9);
--ARCHIVE
insert into archive (number)values('1');
insert into archive (number)values('2');
--BOOK_CASE
insert into book_case(number,ar_id)values('1',1);
insert into book_case(number,ar_id)values('2',1);
insert into book_case(number,ar_id)values('1',2);
insert into book_case(number,ar_id)values('2',2);
--SHELF
insert into shelf(number,bc_id)values('1',1); 
insert into shelf(number,bc_id)values('2',1);
insert into shelf(number,bc_id)values('1',2);
insert into shelf(number,bc_id)values('2',2);
insert into shelf(number,bc_id)values('1',3);
insert into shelf(number,bc_id)values('2',3);
insert into shelf(number,bc_id)values('1',4);
insert into shelf(number,bc_id)values('2',4);
--BOOK
insert into book(name,date,produser,number,a_id,sh_id)values('Book2','12.3.1987','Самиздат','1',2,1);
insert into book(name,date,produser,number,a_id,sh_id)values('Book3','11.4.1986','Самиздат1','1',3,2);
insert into book(name,date,produser,number,a_id,sh_id)values('Book4','10.5.1985','Самиздат2','1',4,3);
insert into book(name,date,produser,number,a_id,sh_id)values('Book5','9.3.1997','Самиздат3','1',5,4);
insert into book(name,date,produser,number,a_id,sh_id)values('Book6','2.3.2000','Самиздат3','2',6,1);
insert into book(name,date,produser,number,a_id,sh_id)values('Book7','1.5.2001','Самиздат2','3',7,2);
insert into book(name,date,produser,number,a_id,sh_id)values('Book8','4.7.2002','Самиздат1','2',1,3);
insert into book(name,date,produser,number,a_id,sh_id)values('Book9','17.9.2003','Самиздат','1',2,4);
insert into book(name,date,produser,number,a_id,sh_id)values('Book10','22.11.2004','Самиздат1','1',3,8);
insert into book(name,date,produser,number,a_id,sh_id)values('Book11','10.8.2005','Самиздат','2',4,8);
insert into book(name,date,produser,number,a_id,sh_id)values('Book12','19.2.2006','Самиздат3','4',4,8);

update author set birthday  ='28.08.1828' where last_name = 'Толстой';
update author set birthday  ='02.06.1961' where last_name = 'Хемингуэй';
update author set birthday  ='8.11.1847' where last_name = 'Стокер';
update author set birthday  ='30.08.1797' where last_name = 'Шелли';
update author set birthday  ='25.06.1903' where last_name = 'Оруэлл';
update author set birthday ='20.08.1890' where last_name = 'Лавкрафт';
update author set birthday  ='19.01.1809' where last_name = 'По';
update author set birthday  ='21.09.1947' where last_name = 'Кинг';
update author set birthday ='19.01.1868' where last_name = 'Майринк';
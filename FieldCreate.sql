--AUTHOR
insert into author values(nextval('author_id_seq'),'Anton','Panov','','18.05.1976');
insert into author values(nextval('author_id_seq'),'A','B','','11.02.1956');
insert into author values(nextval('author_id_seq'),'C','D','','18.09.1987');
insert into author values(nextval('author_id_seq'),'D','E','','17.10.1973');
insert into author values(nextval('author_id_seq'),'A','S','','16.11.1769');
insert into author values(nextval('author_id_seq'),'F','T','','15.12.1876');
--POEM
insert into poem (name,content,date,a_id) values('Начало','Beginer','27.10.2022',1);
insert into poem (name,content,date,a_id) values('Продолжение','Continuation','28.10.2022',1);
insert into poem (name,content,date,a_id) values('Конец','END','31.10.2022',1);
insert into poem (name,content,date,a_id) values('as','as','27.10.2022',2);
insert into poem (name,content,date,a_id) values('bs','Bs','27.10.2022',2);
insert into poem (name,content,date,a_id) values('cs','cs','27.10.2022',3);
insert into poem (name,content,date,a_id) values('ds','ds','27.10.2022',4);
insert into poem (name,content,date,a_id) values('es','es','27.10.2022',5);
insert into poem (name,content,date,a_id) values('fs','fs','27.10.2022',6);
insert into poem (name,content,date,a_id) values('gs','gs','27.10.2022',7);
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
insert into book(name,date,produser,number,a_id,sh_id)values('Book3','11.4.1986','Самиздат','1',3,2);
insert into book(name,date,produser,number,a_id,sh_id)values('Book4','10.5.1985','Самиздат','1',4,3);
insert into book(name,date,produser,number,a_id,sh_id)values('Book5','9.3.1997','Самиздат','1',5,4);
insert into book(name,date,produser,number,a_id,sh_id)values('Book6','2.3.2000','Самиздат','2',6,1);
insert into book(name,date,produser,number,a_id,sh_id)values('Book7','1.5.2001','Самиздат','3',7,2);
insert into book(name,date,produser,number,a_id,sh_id)values('Book8','4.7.2002','Самиздат','2',1,3);
insert into book(name,date,produser,number,a_id,sh_id)values('Book9','17.9.2003','Самиздат','1',2,4);
insert into book(name,date,produser,number,a_id,sh_id)values('Book10','22.11.2004','Самиздат','1',3,8);
insert into book(name,date,produser,number,a_id,sh_id)values('Book11','10.8.2005','Самиздат','2',4,8);
insert into book(name,date,produser,number,a_id,sh_id)values('Book12','19.2.2006','Самиздат','4',4,8);

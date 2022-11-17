create view author_ages as
select  a.first_name, a.last_name, a.birthday, p.name as poem_name, b.name as book_name
from book b
full outer join poem p  on b.id = p.book_id   
full outer join author a on a.id=p.a_id
where a.birthday >'01/01/1900' and a.birthday <'01/01/2000';



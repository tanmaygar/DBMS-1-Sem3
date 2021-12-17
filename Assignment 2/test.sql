with table1 as (select * from X)
select c1.id_num, c2.id_num, c3.id_num, c1.id_str, c2.id_str, c3.id_str
from table1 c1 cross join table1 c2 cross join table1 c3
where c1.id_num < c2.id_num and c2.id_num < c3.id_num
order by c1.id_num, c2.id_num, c3.id_num;

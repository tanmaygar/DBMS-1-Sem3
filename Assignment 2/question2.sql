select t1.course_id, t1.name as name1, t2.name as name2 
from instructor as t1
left join student as t2 on t1.course_id=t2.course_id
where t2.course_id is null
union all
select t1.course_id, t1.name as name1, t2.name as name2
from instructor as t1
inner join student as t2 on t1.course_id=t2.course_id
union all
select t2.course_id, t1.name as name1, t2.name as name2
from student as t2
left join instructor as t1 on t1.course_id=t2.course_id
where t1.course_id is null;
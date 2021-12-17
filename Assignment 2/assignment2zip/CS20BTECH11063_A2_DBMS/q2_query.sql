/*
    Open q2_db.db to have access to TABLE
    Output is in q2_op.csv (open as text)
*/    
    
    
    SELECT ins_table.course_id as ins_course, ins_table.name AS ins_name, stu_table.name AS stu_name, stu_table.course_id as stu_course
    FROM instructor AS ins_table
        LEFT JOIN student AS stu_table ON ins_table.course_id = stu_table.course_id
    WHERE stu_table.course_id IS NULL
UNION ALL
    SELECT ins_table.course_id as ins_course, ins_table.name AS ins_name, stu_table.name AS stu_name, stu_table.course_id as stu_course
    FROM instructor AS ins_table,student AS stu_table WHERE ins_table.course_id = stu_table.course_id
UNION ALL
    SELECT ins_table.course_id as ins_course, ins_table.name AS ins_name, stu_table.name AS stu_name, stu_table.course_id as stu_course
    FROM student AS stu_table
        LEFT JOIN instructor AS ins_table ON ins_table.course_id = stu_table.course_id
    WHERE ins_table.course_id IS NULL;
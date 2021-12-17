/*
    Open q4_db.db to have access to TABLE
    If View temp_table_X exists then run only query
    else run entire file
    Output is in q4__op.csv (open as text)
*/ 


CREATE VIEW temp_table_X AS 
    SELECT * FROM X;

SELECT SUBSTR('0' || X_1.id_num, -1, 1) || ',' || SUBSTR('0' || X_2.id_num, -1, 1) || ',' || SUBSTR('0' || X_3.id_num, -1, 1) AS Num, X_1.id_str || ',' || X_2.id_str || ',' || X_3.id_str AS Str
FROM temp_table_X X_1 CROSS JOIN temp_table_X X_2 CROSS JOIN temp_table_X X_3
WHERE X_1.id_num < X_2.id_num AND X_2.id_num < X_3.id_num
ORDER BY X_1.id_num, X_2.id_num, X_3.id_num;

/*SELECT X_1.id_num, X_2.id_num, X_3.id_num, X_1.id_str, X_2.id_str, X_3.id_str
FROM temp_table_X X_1 CROSS JOIN temp_table_X X_2 CROSS JOIN temp_table_X X_3
WHERE X_1.id_num < X_2.id_num AND X_2.id_num < X_3.id_num
ORDER BY X_1.id_num, X_2.id_num, X_3.id_num;*/


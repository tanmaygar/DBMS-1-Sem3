CREATE VIEW try1 AS 
    SELECT * FROM X;

SELECT SUBSTR('0' || X_1.id_num, -1, 1) || ',' || SUBSTR('0'||X_2.id_num, -1, 1) || ',' || SUBSTR('0'||X_3.id_num, -1, 1) AS Num, X_1.id_str || ',' || X_2.id_str || ',' || X_3.id_str AS Str
FROM try1 X_1 CROSS JOIN try1 X_2 CROSS JOIN try1 X_3
WHERE X_1.id_num < X_2.id_num AND X_2.id_num < X_3.id_num
ORDER BY X_1.id_num, X_2.id_num, X_3.id_num;
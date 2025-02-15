-- 코드를 입력하세요
# 1. NOT IN
# 2. LEFT JOIN

SELECT
    NAME, DATETIME
FROM
    ANIMAL_INS
WHERE
    ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY
    DATETIME ASC
LIMIT 3;


# SELECT 
#     I.NAME, I.DATETIME
# FROM 
#     ANIMAL_INS I LEFT JOIN ANIMAL_OUTS O
#     ON I.ANIMAL_ID = O.ANIMAL_ID
# WHERE 
#     O.ANIMAL_ID IS NULL 
# ORDER BY
#     DATETIME ASC
# LIMIT 3;
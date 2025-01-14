-- 코드를 작성해주세요
# WITH RECURSIVE

WITH RECURSIVE ECOLI_DATA_GEN AS(
    SELECT
        ID,
        PARENT_ID,
        1 AS GEN
    FROM
        ECOLI_DATA 
    WHERE
        PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT
        E.ID,
        E.PARENT_ID,
        GEN+1 AS GEN
    FROM
        ECOLI_DATA_GEN 
    JOIN
        ECOLI_DATA AS E
    ON
        ECOLI_DATA_GEN.ID = E.PARENT_ID
)

SELECT
    ID
FROM
    ECOLI_DATA_GEN
WHERE
    GEN = 3
ORDER BY 
    ID ASC;
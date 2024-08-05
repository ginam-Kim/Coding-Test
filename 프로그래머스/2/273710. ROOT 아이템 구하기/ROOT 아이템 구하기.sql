-- 코드를 작성해주세요

SELECT 
    INFO.ITEM_ID, INFO.ITEM_NAME
FROM
    ITEM_INFO INFO LEFT JOIN ITEM_TREE TREE ON INFO.ITEM_ID = TREE.ITEM_ID
WHERE
    TREE.PARENT_ITEM_ID IS NULL
ORDER BY 
    INFO.ITEM_ID ASC;
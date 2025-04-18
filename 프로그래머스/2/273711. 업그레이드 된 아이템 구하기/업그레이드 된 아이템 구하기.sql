# SELECT *
# FROM ITEM_INFO A LEFT JOIN ITEM_TREE B ON A.ITEM_ID = B.ITEM_ID
# WHERE A.RARITY = 'RARE'


SELECT A.ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO A LEFT JOIN ITEM_TREE B ON A.ITEM_ID = B.ITEM_ID
WHERE B.PARENT_ITEM_ID IN (SELECT DISTINCT ITEM_ID
                            FROM ITEM_INFO
                            WHERE RARITY = 'RARE')
ORDER BY A.ITEM_ID DESC;



# SELECT DISTINCT ITEM_ID
# FROM ITEM_INFO
# WHERE RARITY = 'RARE'
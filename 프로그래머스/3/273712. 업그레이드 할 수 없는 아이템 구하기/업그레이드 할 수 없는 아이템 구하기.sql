-- 코드를 작성해주세요
# NOT IN 을 활용할 경우 비교되는 서브쿼리 튜플들 중 null 이 포함되면 안 되고,
# 그러므로 서브쿼리 내에서 IS NOT NULL 조건을 걸어주어 unknown 결과를 제거해주어야 하는 것


SELECT
    ITEM_ID, ITEM_NAME, RARITY
FROM
    ITEM_INFO
WHERE
    ITEM_ID NOT IN (SELECT
                        PARENT_ITEM_ID
                    FROM
                        ITEM_TREE
                    WHERE
                        PARENT_ITEM_ID IS NOT NULL)
ORDER BY
    ITEM_ID DESC;
-- 코드를 작성해주세요
# 비트연산자의 활용
# Front End 스킬 여러 개를 가진 개발자가 있다면 id가 중복해서 나올 것이므로 DISTINCT ID를 출력해야함.


WITH FE AS(
    SELECT
        *
    FROM
        SKILLCODES
    WHERE
        CATEGORY='Front End'
)

SELECT
    DISTINCT D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
FROM
    DEVELOPERS D, FE F
WHERE
    D.SKILL_CODE & F.CODE > 0
ORDER BY
    ID ASC;

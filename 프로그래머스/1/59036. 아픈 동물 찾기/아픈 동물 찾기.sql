-- 코드를 입력하세요
SELECT 
    ANIMAL_ID, NAME 
FROM 
    ANIMAL_INS
WHERE 
    intake_condition = 'Sick'
ORDER BY 
    ANIMAL_ID;
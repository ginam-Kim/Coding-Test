-- 코드를 작성해주세요
# 비트 연산자!!

SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE & 2)=0 
    AND ((GENOTYPE & 1)>0 OR (GENOTYPE & 4));

# ?101
# ?001
# ?100
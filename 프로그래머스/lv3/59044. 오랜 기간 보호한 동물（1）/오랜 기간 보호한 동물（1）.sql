-- 코드를 입력하세요
SELECT NAME, DATETIME
FROM ANIMAL_INS I
WHERE I.ANIMAL_ID NOT IN(
        SELECT O.ANIMAL_ID
        FROM ANIMAL_OUTS O
    )
ORDER BY DATETIME ASC
LIMIT 3
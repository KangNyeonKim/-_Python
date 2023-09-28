-- 코드를 입력하세요
SELECT APNT_NO, PT_NAME, PT_NO, A.MCDP_CD, D.DR_NAME, APNT_YMD
FROM APPOINTMENT A
    JOIN PATIENT P
    USING(PT_NO)
    JOIN DOCTOR D
    ON A.MDDR_ID = D.DR_ID
WHERE 
    DATE_FORMAT(APNT_YMD, '%Y-%m-%d') = "2022-04-13"
    AND A.MCDP_CD = 'CS'
    AND APNT_CNCL_YN = 'N'
ORDER BY
    APNT_YMD ASC
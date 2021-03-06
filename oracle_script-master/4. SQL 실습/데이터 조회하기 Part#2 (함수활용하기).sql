----------------------------------------------------------
----------------- 문자 함수 -------------------------------
----------------------------------------------------------
-- 1. 대/소문자 변경
SELECT
    LOWER(PRODUCT) AS CASE1,
    UPPER(PRODUCT) AS CASE2
FROM KOPO_CHANNEL_SEASONALITY_NEW

-- 2. 컬럼 값 합치기
SELECT
    CONCAT(REGIONID, CONCAT('_',PRODUCT)) AS KEYCOL,
    REGIONID||'_'||PRODUCT AS KEYCOL2
FROM KOPO_CHANNEL_SEASONALITY_NEW

-- 3. 컬럼 값 추출하기
SELECT
    PRODUCT,
    SUBSTR(PRODUCT,1,7)
FROM KOPO_CHANNEL_SEASONALITY_NEW

-- 4. 컬럼 값 채우기
SELECT
    LPAD(PRODUCT,10,'0')
FROM KOPO_CHANNEL_SEASONALITY_NEW

  -- KOPO_CUSTOMERDATA 테이블에서
  -- CUSTOMERCODE를 12자리로 조회하세요
  -- 단, 12자리가 안될 경우 앞에 *로 채우세요
  SELECT 
  LPAD(CUSTOMERCODE,12,'*')
  FROM KOPO_CUSTOMERDATA
  
-- 5. 컬럼 값 제거 (LTRIM, RTRIM, TRIM)
SELECT
    LTRIM(PRODUCT,'PRO'),
    RTRIM(PRODUCT,'56')
FROM KEOOPO_CHANNEL_SEASONALITY_NEW

-- 6. 변경하기 (REPLACE)
SELECT
    REGIONID,
    REPLACE(REGIONID, 'A', 'REGION')
FROM KOPO_CHANNEL_SEASONALITY_NEW

    -- KOPO_CUSTOMERDATA의 고객코드는 10자리이다
    -- 만약 10자리가 아니면 왼쪽에 0으로 채운다
    -- 이후 고객코드의 뒷 4자리는 암호화를 위해 * 처리를 하세요
    

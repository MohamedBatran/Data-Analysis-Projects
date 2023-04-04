-- Show the Data
SELECT * FROM India_Colleges

-- Drop column1 
ALTER TABLE India_Colleges
DROP COLUMN Column1

-- SELECT DISTINCT OWNER_SHIP AND GRADE
SELECT DISTINCT(owner_ship) FROM India_Colleges
SELECT DISTINCT(grade) FROM India_Colleges

-- SELECT AVERAGE TLR BY GRADE 
SELECT  grade,  AVG(TLR) AS TLR_AVG FROM India_Colleges
GROUP BY grade ORDER BY grade ASC

-- SELECT MAX OI BY NAME
SELECT name ,MAX(oi) AS MAX_OI FROM India_Colleges
GROUP BY name ORDER BY MAX_OI DESC



-- SELECT SUM GO BY GRADE
SELECT grade ,sum(go) as go_sum FROM India_Colleges
GROUP BY grade ORDER BY go_sum DESC

-- SELECT SUM RPC BY OWNER SHIP
SELECT owner_ship ,sum(RPC) as rpc_sum FROM India_Colleges
GROUP BY owner_ship ORDER BY rpc_sum DESC

SELECT * FROM India_Colleges

-- GET MAX VALUES FOR TLR&RPC&GO&OERC&OI&TOTAL
SELECT MAX(TLR) MAX_TLR, MAX(RPC) MAX_RPC,
MAX(go) MAX_GO, MAX(oi) MAX_OI, MAX(perc) MAX_PERC, MAX(total) MAX_TOTAL
FROM India_Colleges

-- GET MIN VALUES FOR TLR&RPC&GO&OERC&OI&TOTAL
SELECT MIN(TLR) MIN_TLR, MIN(RPC) MIN_RPC,
MIN(go) MIN_GO, MIN(oi) MIN_OI, MIN(perc) MIN_PERC, MIN(total) MIN_TOTAL
FROM India_Colleges

-- MAKE CASES FOR ANALYSIS
SELECT grade,name,owner_ship,total
,CASE
	WHEN total <= 30 THEN 'THE TOTAL IS MUST BE ABOVE 30'
	WHEN TOTAL > 90 THEN 'THE TOTAL IS MUST BE LESS THAN 90'
	WHEN total > 30 AND total <=90 THEN 'THE TOTAL IS TRUE'
	ELSE 'THE NUMBER CANNOT CONVERT'
	END AS TOTAL_TEXT
FROM India_Colleges


SELECT name,grade,perc ,AVG(perc) OVER (PARTITION BY grade) AS AVG_PERS
FROM India_Colleges

-- SELECT MAX TOTAL BY GRADE
SELECT grade ,MAX(total) AS max_total FROM India_Colleges  
GROUP BY grade 

-- SELECT TOP 10 NAMES BY PERC
SELECT TOP 10 name  ,MAX(perc) AS max_perc FROM India_Colleges
GROUP BY name oRDER BY max_perc DESC

SELECT * FROM India_Colleges

-- SELECT NO_NAMES BY OWNER SHIP
SELECT owner_ship , COUNT(name) no_names FROM India_Colleges
GROUP BY owner_ship


/* Aggregationen AVG() */

use stocks;
system clear:

-- Durchschnittspreis einer Aktie / Banken ??
/*
SELECT
    AVG(price) "Durchschnittspreis"
FROM stocks.ccc_list
WHERE  industry = "Banks"
LIMIT 20;
*/

-- KOMBINATION Preis/ Dividenden
/*
SELECT
    DISTINCT sector AS "Industriesektor",
    ROUND (AVG(price),2) AS "Durchschnittspreis eienr Aktie",
    AVG (dividend) AS "Duschn. Dividende"
FROM stocks.ccc_list
GROUP BY sector
#ORDER BY AVG(price) DESC
ORDER BY AVG(dividend) DESC
;
*/

-- Auszahlungsrhytmus
/**/
SELECT 
	payouts AS "Rhythm",
    REPLACE(REPLACE(REPLACE(REPLACE(payouts,"12","monthly"),"4","quarterly"),"2","half-yearly"),"1","yearly") 
    AS "Rhythm by Name", 
	count(payouts) AS "No. of Companies"
FROM ccc_list 
GROUP BY payouts
ORDER BY count(payouts) DESC; 


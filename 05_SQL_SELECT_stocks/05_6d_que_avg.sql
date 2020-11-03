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
SELECT
    DISTINCT sector AS "Industriesektor",
    ROUND (AVG(price),2) AS "Durchschnittspreis eienr Aktie",
    AVG (dividend) AS "Duschn. Dividende"
FROM stocks.ccc_list
GROUP BY sector
#ORDER BY AVG(price) DESC
ORDER BY AVG(dividend) DESC
;



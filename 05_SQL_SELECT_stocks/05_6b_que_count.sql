/* Aggregationen COUNT */

use stocks;
system clear:

/* Links:
    
*/

-- Welche VERSCHIDENEN Sektoren ??
/*
SELECT 
    DISTINCT sector AS "Industriesektoren"
FROM stocks.ccc_list
ORDER BY sector ASC; 
 */
 
-- Wieviele VERSCHIDENEN Sektoren ??
/*
SELECT 
    COUNT(DISTINCT sector) AS "Anzahl Industriesektoren"
FROM stocks.ccc_list
ORDER BY sector ASC; 
*/

-- Welche VERSCHIDENEN Branchen ??
/*
SELECT 
    COUNT(DISTINCT industry) AS "Anzahl Branchen"
FROM stocks.ccc_list
ORDER BY sector ASC; 
*/

-- Welche VERSCHIDENEN Branchen gibt es in den jeweiligen Industriesektoren ??

SELECT 
    sector AS "Industriesektoren",
    COUNT(DISTINCT Industry) AS "Branchenanzahl"
FROM stocks.ccc_list
WHERE sector LIKE "%ials"
GROUP BY sector
     
#ORDER BY COUNT(DISTINCT Industry) DESC;
ORDER BY Branchenanzahl DESC;




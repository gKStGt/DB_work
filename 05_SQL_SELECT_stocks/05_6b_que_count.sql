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
/*
SELECT 
    sector AS "Industriesektoren",
    COUNT(DISTINCT Industry)     "Branchenanzahl"
FROM stocks.ccc_list
#WHERE sector LIKE "%ials" --> Filter nicht agg. Felder 
GROUP BY sector
#HAVING Branchenanzahl > 10 # --> Filter agg. Felder 
#ORDER BY COUNT(DISTINCT Industry) DESC;
ORDER BY Branchenanzahl DESC;
*/

-- Wiviele Firmen gibt es in den Branchen ??
/*
SELECT 
    industry AS "Branchen",
    COUNT(industry) "Firmenanzahl"
FROM stocks.ccc_list
GROUP BY industry
HAVING Firmenanzahl >= 10
ORDER BY Firmenanzahl DESC;
*/

-- Wieviele Untenhmen zahlen 12/4/2/1 ??
SELECT 
    payouts "Auszahlungen p.a.",
    COUNT(payouts) "Anzahl"
FROM stocks.ccc_list
GROUP BY payouts
ORDER BY payouts DESC;


-- Welche Untenhmen zahlen 12/4/2/1 ??

SELECT 
    ticker "SYM",
    c_name "Unternhmen",
    sector "Industriesektor"
FROM stocks.ccc_list
WHERE payouts = 12
ORDER BY sector ASC;





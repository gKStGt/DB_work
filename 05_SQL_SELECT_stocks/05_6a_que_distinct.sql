/* DISTINCT */

use stocks;
system clear;

-- alle Sektoren werden angezeigt 
/*
SELECT 
sector
    FROM stocks.ccc_list
ORDER BY sector ASC 
LIMIT 100; 
*/

-- nur das erste Auftreten von Sektoren 
-- welche VESCHIEDENE Sektoren gibt es ??
/*
SELECT 
    DISTINCT sector AS "Industriesektoren"
FROM stocks.ccc_list
ORDER BY sector ASC; 
*/

-- welche Verschidenen Branchen gibt es ??
/*
SELECT 
    DISTINCT industry AS "Branchen"
FROM stocks.ccc_list
ORDER BY Industry ASC; 
*/

-- weche Verchiedenen Auszhalungs-Rhytmen gibt es ??

    SELECT 
    DISTINCT payouts AS "Auszahlungen/Jahr"
FROM stocks.ccc_list
ORDER BY payouts ASC; 




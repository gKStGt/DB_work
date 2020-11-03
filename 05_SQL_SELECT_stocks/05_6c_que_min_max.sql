/* Aggregationen MIN/MAX */

use stocks;
system clear:

-- Preis der teursten/günstigsten Aktie ??
/*
SELECT
    MAX(price) AS "Max. Preis"
FROM stocks.ccc_list;

-- Preis der günstigsten Aktie ??
SELECT
    MIN(price) AS "Min. Preis"
FROM stocks.ccc_list;
 */
 
 -- Welche Aktei ist am teursten/günstigsten ??
 -- 1. Subquery 
 -- 2. Order by ... ASC/DESC & LIMIT 1
 SELECT 
     ticker "SYM",
     c_name "Unternehmen",
     price "Aktienpreis"
 FROM stocks.ccc_list
 WHERE price = (SELECT MAX(price)FROM stocks.ccc_list) #Klammern !!
 #WHERE price = (SELECT MIN(price)FROM stocks.ccc_list);
 ;
 SELECT 
     ticker "SYM",
     c_name "Unternehmen",
     price "Aktienpreis"
 FROM stocks.ccc_list
 #ORDER BY price ASC
 ORDER BY price DESC
 LIMIT 1;


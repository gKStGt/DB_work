/* Filtern mit WHERE */

use stocks;
system clear;

/*
Eingrenzen/Filtern WHERE & AND/OR etc.
Eingrenzen/Filtern WHERE & LIKE etc.

*/ 

-- Eingrenzen/Filtern WHERE & AND/OR/NOT etc.
/*
SELECT 
ticker "SYM",
c_name "Unternehmen",
payouts "Zahlungen p.a.",
price "Aktienpreis/$",
dividend "Dividende",
CONCAT (sector, " : ", industry) "Operations"
FROM stocks.ccc_list
-- Einzeldaten / Strings
#WHERE sector = "Communiktion Services"
#WHERE sector = "Media"
-- Kombination durch AND
#WHERE sector = "Communiktion Services" AND industry = "Entertainment"
-- Kombination durch AND / OR
#WHERE sector = "Communiktion Services" AND (industry = "Entertainment" OR industry = "Media")
-- Kombination durch AND / NOT
WHERE sector = "Communiktion Services" AND NOT industry = "Entertainment"
ORDER BY industry ASC, price DESC;
LIMIT 40;
*/

-- Eingrenzen/Filtern WHERE & LIKE + Parameter
SELECT 
ticker "SYM",
c_name "Unternehmen",
industry"Branche"
FROM stocks.ccc_list
-- scharfe suche nach String 
#WHERE industry = "Entertainment"
-- unschärfere Suche 
#WHERE industry LIKE "Entertainment"
-- Branchenname beginnt mit ..., dahinter beliebige Chars
#WHERE industry LIKE "AIR%"
-- Branchenname endet mit ..., davor beliebige Chars
#WHERE industry LIKE "%ment"
-- Branchenname enthält...,
#WHERE industry LIKE "%ood%"


ORDER BY industry ASC, price DESC;
LIMIT 100;







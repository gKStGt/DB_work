/* Filtern mit WHERE */

use stocks;
system clear;

-- Index
/*
Eingrenzen/Filtern WHERE & AND/OR etc.
Eingrenzen/Filtern WHERE & LIKE etc.
Eingrenzen/Filtern WHERE & RegEx
Eingrenzen/Filtern WHERE & IN / NOT IN 
Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN 
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
/*
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
-- Branchenname beginnt/endet mit..._, danch /davor/inmitten genau _ CHAR
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "M__ia"
#WHERE industry LIKE "M_d_a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"
WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"

ORDER BY industry ASC, price DESC;
LIMIT 100;
*/

/*
-- Eingrenzen/Filtern WHERE & RegEx
SELECT 
    c_name "Unternehmen",
FROM stocks.ccc_list
WHERE c_name RLIKE "^[AZ]"
ORDER BY c_name
*/

/*
-- Eingrenzen/Filtern WHERE & IN / NOT IN 
SELECT 
    ticker "SYM",
    c_name "Unternehmen",
    industry "Branche"
FROM stocks.ccc_list
#WHERE industry = "Chemicals"
#WHERE industry IN ("Beverages","Banks")
WHERE sector = "Financials" AND industry NOT IN ("Banks","Insurance")
ORDER BY industry DESC;
*/

/*
-- Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN 
SELECT 
    ticker "SYM",
    c_name "Unternehmen",
    industry "Branche",
    price "Aktienpreis"
FROM stocks.ccc_list
#WHERE sector = "Financials" AND (price BETWEEN 30.0 AND 50.0)
WHERE sector = "Financials" AND NOT (price BETWEEN 20.0 AND 250.0)
ORDER BY price DESC;
LIMIT 20;
*/



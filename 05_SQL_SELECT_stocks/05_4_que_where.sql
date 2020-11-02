/* Filtern mit WHERE */

use stocks;
system clear;

/*
Eingrenzen/Filtern WHERE & AND/OR etc.


*/ 


/**/
SELECT 
ticker "SYM",
payouts "Zahlungen p.a.",
price "Aktienpreis/$",
dividend "Dividende",
CONCAT (sector, " : ", industry) "Operations"
FROM stocks.ccc_list
-- Einzeldaten / Strings
WHERE sector = "Communiktion Services "


LIMIT 40;

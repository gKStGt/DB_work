/* QUERIES Sortierung */


-- ASC / DSC
-- sortieren nach Sektor / aufsteigend

SELECT
ticker "sym",
c_name "company",
CONCAT(sector," : ",industry) "operations"
FROM stocks.ccc_list
ORDER BY sector ASC
#ORDER BY sector ASC , industry DESC
LIMIT 30;


-- sortieren nach Aktienpreis aufsteigend / absteigend
/*
SELECT
ticker "Symbol",
price "Preis in $",
payouts"Zahlungen pro Jahr",
no_years "Jahre ++",
c_name "Unternehmen",
CONTACT (sector, " : ", industry)"operations"
FROM stocks.ccc_list
ORDER by
*/

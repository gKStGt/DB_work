/* String -Funktionen */

use stocks;
system clear;

/*
    CONCAT() / Verknüpfung "string " + "string" ...
    UPPER() --> alles in Grosbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGHT() --> String-Länge 
    REPLACE()--> Ersetzen von Stringanteilen
*/

-- CONCAT() / Verknüpfung "string " + "string" ...
/*
SELECT
    ticker "SYM",
    c_name "Unternehmen",
    CONCAT(sector, " : " industry) "Operations"
FROM stocks.ccc_list
LIMIT 10;
*/

-- UPPER() --> Grosbuchstaben
/*
SELECT
    ticker "SYM",
    UPPER (c_name) "Unternehmen",
FROM stocks.ccc_list
LIMIT 10;
*/

-- LOWER() --> alles in Kleinbuchstaben (z.B bei mail-adressen)
/*
SELECT
    ticker "SYM",
    LOWER (c_name) "Unternehmen",
FROM stocks.ccc_list
LIMIT 20;
*/

-- LENGHT() --> String-Länge 
^/*
SELECT
    ticker "SYM",
    LOWER (c_name) "Unternehmen",
    CONCAT(sector, " : " industry) "Operations"
    LENGHT(CONCAT(sector, ":" industry)) "StringLength"
FROM stocks.ccc_list
ORDER BY StringLength DESC
LIMIT 20;
*/

-- REPLACE()--> Ersetzen von Stringanteilen
SELECT
    ticker "SYM",
    c_name "Unternehmen",
FROM stocks.ccc_list
WHERE c_name LIKE "%INC."
LIMIT 30;

UPDATE ccc_list SET c_name = REPLACE(c_name, "Inc.", "Incorporated");

SELECT
    ticker "SYM",
    c_name "Unternehmen",
FROM stocks.ccc_list
WHERE c_name LIKE "%Incorporated"
LIMIT 30;





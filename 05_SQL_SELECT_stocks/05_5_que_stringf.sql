/* String -Funktionen */

use stocks;
system clear;

/*
    CONCAT() / Verkn체pfung "string " + "string" ...
    UPPER() --> alles in Grosbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGHT() --> String-L채nge 
    REPLACE()--> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
*/

-- CONCAT() / Verkn체pfung "string " + "string" ...
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
    LOWER (c_name) "Unternehmen"
FROM stocks.ccc_list
LIMIT 20;
*/

-- LENGHT() --> String-L채nge 
/*
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
    c_name "Unternehmen"
FROM stocks.ccc_list
WHERE c_name LIKE "%INC."
LIMIT 30;

UPDATE ccc_list SET c_name = REPLACE(c_name, "Inc.", "Incorporated");

SELECT
    ticker "SYM",
    c_name "Unternehmen"
FROM stocks.ccc_list
WHERE c_name LIKE "%Incorporated"
LIMIT 30;


-- TRIM() --> Trimmen vor/nach String (Whitespace)
/*
UPDATE ccc_list SET c_name = CONCAT ("   ",c_name) WHERE id = 2;
UPDATE ccc_list SET c_name = CONCAT ("   ",c_name) WHERE id = 3;


SELECT
    ticker "SYM",
    ^#c_name "Unternehmen",
    TRIM("   " FROM c_name) "Unternehmen"
FROM stocks.ccc_list
LIMIT 30;
*/

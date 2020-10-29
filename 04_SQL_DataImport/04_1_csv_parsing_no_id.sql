/* Parsing *csv-Datei */

system clear;

DROP TABLE IF EXISTS cats;

/* Tabelle anlegen*/
CREATE TABLE cats
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

#DESC cats;

/* Parsen & Einlesen der Daten */
LOAD DATA LOCAL INFILE "04_SQL_DataImport/data/cats_export_no_id.csv"
INTO TABLE cats
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 LINES
(name, fur_color,age);

SELECT * FROM cats;

/*
    https://dev.mysql.com/doc/refman/8.0/en/load-data.html
*/


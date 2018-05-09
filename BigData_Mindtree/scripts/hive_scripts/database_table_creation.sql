-- Dropping Database

DROP DATABASE IF EXISTS author_Comments CASCADE;
DROP DATABASE IF EXISTS author_authority CASCADE;
DROP DATABASE IF EXISTS dictionary CASCADE;


--Creating a table to load Actual dataset into below 2 tables 

CREATE TABLE IF NOT EXISTS author_Comments (name String,text String) 
ROW FORMAT DELIMITED  FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE 
tblproperties ("skip.header.line.count"="1");



CREATE TABLE IF NOT EXISTS author_authority (name String,level int) 
ROW FORMAT DELIMITED  FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE 
tblproperties ("skip.header.line.count"="1");


--Creating dictionary table to load AFFIN Dictionary data into it.

create table dictionary(word string,ratingint) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';
LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcmoeda.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcmoeda.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcmoeda.dsc'
APPEND INTO TABLE PCMOEDA
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codmoeda CHAR,
  moeda    CHAR
)

LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pchist.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pchist.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pchist.dsc'
APPEND INTO TABLE PCHIST
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codhist    INTEGER EXTERNAL,
  historico  CHAR,
  tipo       CHAR,
  exporta    CHAR,
  dtmxsalter DATE "DD-MM-YYYY"
)

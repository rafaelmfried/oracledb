LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcmodulo.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcmodulo.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcmodulo.dsc'
APPEND INTO TABLE PCMODULO
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codmodulo   INTEGER EXTERNAL,
  modulo      CHAR,
  numversao   "TO_NUMBER(REPLACE(:numversao, ',', '.'), '99999999.99')",
  dtultversao DATE "DD-MM-YYYY",
  exibirmenu  CHAR,
  autmenu     INTEGER EXTERNAL,
  fiid        CHAR
)

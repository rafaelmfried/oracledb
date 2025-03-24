LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcsubmodulo.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcsubmodulo.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcsubmodulo.dsc'
APPEND INTO TABLE PCSUBMODULO
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codmodulo    INTEGER EXTERNAL,
  codsubmodulo INTEGER EXTERNAL,
  submodulo    CHAR,
  exibirmenu   CHAR,
  autmenu      INTEGER EXTERNAL,
  fiid         CHAR,
  dtmxsalter   DATE "DD-MM-YYYY"
)

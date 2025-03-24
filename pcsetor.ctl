LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcsetor.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcsetor.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcsetor.dsc'
APPEND INTO TABLE PCSETOR
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codsetor   INTEGER EXTERNAL,
  descricao  CHAR(100),
  usamyfrota CHAR(100),
  dtmxsalter DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtmxsalter=BLANKS,
  dtultalter DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultalter=BLANKS
)

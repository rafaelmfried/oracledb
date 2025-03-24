LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pccontro.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pccontro.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pccontro.dsc'
APPEND INTO TABLE PCCONTRO
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  codusuario INTEGER EXTERNAL,
  codrotina  INTEGER EXTERNAL,
  acesso     CHAR(1),
  codbanco   INTEGER EXTERNAL NULLIF codbanco=BLANKS,
  codmoeda   CHAR(4) NULLIF codmoeda=BLANKS,
  codepto    INTEGER EXTERNAL NULLIF codepto=BLANKS
)

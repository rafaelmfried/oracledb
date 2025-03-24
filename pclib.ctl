LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pclib.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pclib.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pclib.dsc'
APPEND INTO TABLE PCLIB
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  codfunc     INTEGER EXTERNAL,
  codtabela   INTEGER EXTERNAL,
  codigoa     CHAR(40),
  codigon     INTEGER EXTERNAL,
  codfunc_lib INTEGER EXTERNAL NULLIF codfunc_lib=BLANKS,
  data_lib    DATE "DD/MM/YYYY HH24:MI:SS" NULLIF data_lib=BLANKS
)

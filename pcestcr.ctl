LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcestcr.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcestcr.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcestcr.dsc'
APPEND INTO TABLE PCESTCR
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  codbanco              INTEGER EXTERNAL,
  codcob                CHAR(4),
  valor                 "TO_NUMBER(REPLACE(NULLIF(:valor, 'NaN'), ',', '.'))",
  valorconciliado       "TO_NUMBER(REPLACE(NULLIF(:valorconciliado, 'NaN'), ',', '.'))",
  dtultconcilia         DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultconcilia=BLANKS,
  valorsaldototalconcil "TO_NUMBER(REPLACE(NULLIF(:valorsaldototalconcil, 'NaN'), ',', '.'))",
  valorsaldototalcomp   "TO_NUMBER(REPLACE(NULLIF(:valorsaldototalcomp, 'NaN'), ',', '.'))",
  valorcompensado       "TO_NUMBER(REPLACE(NULLIF(:valorcompensado, 'NaN'), ',', '.'))",
  dtultcompensacao      DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultcompensacao=BLANKS
)

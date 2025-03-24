LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcestcrfor.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcestcrfor.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcestcrfor.dsc'
APPEND INTO TABLE PCESTCRFOR
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  codfilial       CHAR(2),
  codfornec       INTEGER EXTERNAL,
  valor           "TO_NUMBER(REPLACE(NULLIF(:valor, 'NaN'), ',', '.'))",
  valorconciliado "TO_NUMBER(REPLACE(NULLIF(:valorconciliado, 'NaN'), ',', '.'))",
  dtultconcilia   DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultconcilia=BLANKS
)

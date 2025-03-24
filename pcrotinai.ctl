LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcrotinai.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcrotinai.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcrotinai.dsc'
APPEND INTO TABLE PCROTINAI
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codrotina   INTEGER EXTERNAL,
  codcontrole INTEGER EXTERNAL,
  descricao   CHAR,
  codopcao    INTEGER EXTERNAL,
  tipo        CHAR,
  codpai      INTEGER EXTERNAL
)

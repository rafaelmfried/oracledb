LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pccontroi.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pccontroi.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pccontroi.dsc'
APPEND INTO TABLE PCCONTROI
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  codrotina   INTEGER EXTERNAL,
  codcontrole INTEGER EXTERNAL,
  codusuario  INTEGER EXTERNAL,
  acesso      CHAR(1) "NVL(:acesso, 'N')",
  codopcao    INTEGER EXTERNAL NULLIF codopcao=BLANKS
)

LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcrotina.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcrotina.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcrotina.dsc'
APPEND INTO TABLE PCROTINA
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codigo                    INTEGER EXTERNAL,
  nomerotina                CHAR,
  acao                      CHAR,
  ajuda                     CHAR,
  codmodulo                 INTEGER EXTERNAL,
  codsubmodulo              INTEGER EXTERNAL,
  log                       CHAR,
  numseq                    INTEGER EXTERNAL,
  nivel                     INTEGER EXTERNAL,
  status                    CHAR,
  numultversao              DECIMAL EXTERNAL,
  dtultversao               DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultversao=BLANKS,
  exibirmenu                CHAR,
  qtutilizacao              INTEGER EXTERNAL,
  dtultutilizacao           DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultutilizacao=BLANKS,
  dtpriutilizacao           DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtpriutilizacao=BLANKS,
  codfuncultutil            INTEGER EXTERNAL,
  dataexe                   DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dataexe=BLANKS,
  autmenu                   INTEGER EXTERNAL,
  versaocompleta            CHAR,
  utilizacontrolebiometrico CHAR,
  fiid                      CHAR,
  versaoexeant              CHAR,
  versaoexeatual            CHAR,
  hashcodemd5               CHAR,
  rotinaweb                 CHAR,
  rotina                    CHAR,
  datasincronizacao         DATE "DD/MM/YYYY HH24:MI:SS" NULLIF datasincronizacao=BLANKS,
  codigomigracao            INTEGER EXTERNAL,
  dtmxsalter                DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtmxsalter=BLANKS
)

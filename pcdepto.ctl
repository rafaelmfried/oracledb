LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcdepto.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcdepto.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcdepto.dsc'
APPEND INTO TABLE PCDEPTO
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codepto             INTEGER EXTERNAL,
  descricao           CHAR,
  percpartvendaprev   DECIMAL EXTERNAL,
  percmargemprev      DECIMAL EXTERNAL,
  tipomerc            CHAR,
  emiteqtunit         CHAR,
  atualizainvgeral    CHAR,
  margemprevista      "TO_NUMBER(REPLACE(:margemprevista, ',', '.'), '99999999.99')",
  referencia          CHAR,
  perdescmaxideal     DECIMAL EXTERNAL,
  perdescmaxpossivel  DECIMAL EXTERNAL,
  perdescmaxavista    DECIMAL EXTERNAL,
  perccomgarantida    DECIMAL EXTERNAL,
  idintegracaociashop CHAR,
  enviaecommerce      CHAR,
  dtmxsalter          DATE "DD-MM-YYYY",
  status              CHAR,
  deptoocc            CHAR,
  dtultalter          DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtultalter=BLANKS,
  codcamplomadee      CHAR,
  codadwords          CHAR,
  ativo               CHAR,
  descricaoecommerce  CHAR,
  titulo              CHAR,
  coddeptoprinc       INTEGER EXTERNAL,
  dtcadastro          DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtcadastro=BLANKS,
  dtalterc5           TIMESTAMP "DD-MM-YYYY HH24:MI:SS.FF6"
)

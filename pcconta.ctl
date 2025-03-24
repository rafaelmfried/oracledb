LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcconta.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcconta.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcconta.dsc'
APPEND INTO TABLE PCCONTA
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codconta                   INTEGER EXTERNAL,
  conta                      CHAR,
  grupoconta                 INTEGER EXTERNAL,
  codcontamaster             INTEGER EXTERNAL,
  tipo                       CHAR,
  investimento               CHAR,
  bonific                    CHAR,
  vlorcames                  "TO_NUMBER(REPLACE(:vlorcames, ',', '.'), '99999999.99')",
  fixavariavel               CHAR,
  geraprovlanccontab         CHAR,
  codcontacontrapartida      INTEGER EXTERNAL,
  usarateiocentrocusto       CHAR,
  codcentrocustopadrao       INTEGER EXTERNAL,
  verba                      CHAR,
  contacontabil              CHAR,
  codeventointfolha          CHAR,
  codsecaointfolha           CHAR,
  restringirnobalancete      CHAR,
  utilizacentrocustorestrito CHAR,
  codauxdrefluxocx           CHAR,
  prestacaodecontas          CHAR
)

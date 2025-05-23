LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcnfsaid.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcnfsaid.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcnfsaid.dsc'
APPEND INTO TABLE PCNFSAID
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  especie                      CHAR,
  serie                        CHAR,
  numnota                      INTEGER EXTERNAL,
  dtsaida                      DATE "DD-MM-YYYY",
  vltotal                      DECIMAL EXTERNAL,
  codcont                      CHAR,
  codfiscal                    INTEGER EXTERNAL,
  codcli                       INTEGER EXTERNAL,
  caixa                        INTEGER EXTERNAL,
  codusur                      INTEGER EXTERNAL,
  dtentrega                    DATE "DD-MM-YYYY",
  comissao                     DECIMAL EXTERNAL,
  vltotger                     DECIMAL EXTERNAL,
  vltabela                     DECIMAL EXTERNAL,
  codfilial                    CHAR,
  vldesconto                   DECIMAL EXTERNAL,
  tipovenda                    CHAR,
  obs                          CHAR,
  vlcustoreal                  DECIMAL EXTERNAL,
  vlcustofin                   DECIMAL EXTERNAL,
  vlfrete                      DECIMAL EXTERNAL,
  vloutrasdesp                 DECIMAL EXTERNAL,
  totpeso                      DECIMAL EXTERNAL,
  totvolume                    DECIMAL EXTERNAL,
  codpraca                     INTEGER EXTERNAL,
  numitens                     INTEGER EXTERNAL,
  codemitente                  INTEGER EXTERNAL,
  dtcancel                     DATE "DD-MM-YYYY",
  numcar                       INTEGER EXTERNAL,
  codcob                       CHAR,
  numped                       INTEGER EXTERNAL,
  stribut                      DECIMAL EXTERNAL,
  icmsretido                   DECIMAL EXTERNAL,
  bcst                         DECIMAL EXTERNAL,
  coddevol                     INTEGER EXTERNAL,
  nffornec                     INTEGER EXTERNAL,
  codfornec                    INTEGER EXTERNAL,
  coddoc                       CHAR,
  numtransvenda                INTEGER EXTERNAL,
  codplpag                     INTEGER EXTERNAL,
  codfunccancel                INTEGER EXTERNAL,
  numtab                       INTEGER EXTERNAL,
  numseq                       INTEGER EXTERNAL,
  codsupervisor                INTEGER EXTERNAL,
  condvenda                    INTEGER EXTERNAL,
  vldevolucao                  DECIMAL EXTERNAL,
  vlbaseipi                    DECIMAL EXTERNAL,
  vlipi                        DECIMAL EXTERNAL,
  vlicmsantecipado             DECIMAL EXTERNAL,
  codepto                      INTEGER EXTERNAL,
  vltotalnf                    DECIMAL EXTERNAL,
  codfilialnf                  CHAR,
  uf                           CHAR,
  vlbase                       DECIMAL EXTERNAL,
  vlicms                       DECIMAL EXTERNAL,
  vlisentas                    DECIMAL EXTERNAL,
  vloutras                     DECIMAL EXTERNAL,
  numidf                       CHAR,
  numformulario                INTEGER EXTERNAL,
  vlcustorep                   DECIMAL EXTERNAL,
  vlcustocont                  DECIMAL EXTERNAL,
  dtdevol                      DATE "DD-MM-YYYY",
  numselonf                    INTEGER EXTERNAL,
  numseqmontagem               INTEGER EXTERNAL,
  numvolume                    INTEGER EXTERNAL,
  numcupom                     INTEGER EXTERNAL,
  vlrecebidodin                DECIMAL EXTERNAL,
  vlrecebidoch                 DECIMAL EXTERNAL,
  vlrecebidoboleto             DECIMAL EXTERNAL,
  vltroco                      DECIMAL EXTERNAL,
  codfunclibent                INTEGER EXTERNAL,
  dtlibent                     DATE "DD-MM-YYYY",
  vldescprom                   DECIMAL EXTERNAL,
  numvias                      INTEGER EXTERNAL,
  codcontrato                  INTEGER EXTERNAL,
  fretedespacho                CHAR,
  freteredespacho              CHAR,
  codfornecfrete               INTEGER EXTERNAL,
  vlrecebidocartao             DECIMAL EXTERNAL,
  numtransvendaorigem          INTEGER EXTERNAL,
  codfunclanc                  INTEGER EXTERNAL,
  dtcanhoto                    DATE "DD-MM-YYYY",
  numtransvendadestino         INTEGER EXTERNAL,
  codusur3                     INTEGER EXTERNAL,
  codusur2                     INTEGER EXTERNAL,
  horalanc                     CHAR,
  minutolanc                   CHAR,
  rotinalanc                   CHAR,
  equiplanc                    CHAR,
  funclanc                     CHAR,
  dtwms                        DATE "DD-MM-YYYY",
  prazomedio                   INTEGER EXTERNAL,
  prazoadicional               INTEGER EXTERNAL,
  vlfretenf                    DECIMAL EXTERNAL,
  codsupervisor2               INTEGER EXTERNAL,
  codsupervisor3               INTEGER EXTERNAL,
  comissao2                    DECIMAL EXTERNAL,
  comissao3                    DECIMAL EXTERNAL,
  vliss                        DECIMAL EXTERNAL,
  numlanccp                    INTEGER EXTERNAL,
  prazoponderado               CHAR,
  numnftransf                  INTEGER EXTERNAL,
  serieecf                     CHAR,
  numserieequip                CHAR,
  vlbonific                    DECIMAL EXTERNAL,
  bcstgnre                     DECIMAL EXTERNAL,
  icmsretidognre               DECIMAL EXTERNAL,
  tipodevol                    CHAR,
  codclinf                     INTEGER EXTERNAL,
  vlir                         DECIMAL EXTERNAL,
  percfrete                    DECIMAL EXTERNAL,
  numregiaofrete               INTEGER EXTERNAL,
  codcondicaovenda             INTEGER EXTERNAL,
  totvldescfin                 DECIMAL EXTERNAL,
  totvldesccom                 DECIMAL EXTERNAL,
  totvlbonific                 DECIMAL EXTERNAL,
  totvldescflex                DECIMAL EXTERNAL,
  totvlredcomiss               DECIMAL EXTERNAL,
  numviaspu                    INTEGER EXTERNAL,
  numorca                      INTEGER EXTERNAL,
  comissaosup                  DECIMAL EXTERNAL,
  totvlredcomisssup            DECIMAL EXTERNAL,
  dtemissaonffornec            DATE "DD-MM-YYYY",
  tipofrete                    CHAR,
  broker                       CHAR,
  perbaseredoutrasdesp         DECIMAL EXTERNAL,
  numcaixafiscal               INTEGER EXTERNAL,
  dthorachegada                DATE "DD-MM-YYYY HH24:MI:SS",
  dthorasaida                  DATE "DD-MM-YYYY HH24:MI:SS",
  kmfinalentrega               DECIMAL EXTERNAL,
  vlpis                        DECIMAL EXTERNAL,
  perdescfin                   DECIMAL EXTERNAL,
  codclirecebedor              INTEGER EXTERNAL,
  numregiao                    INTEGER EXTERNAL,
  numorcafilial                INTEGER EXTERNAL,
  apresentoucupompromocao      CHAR,
  nsu                          INTEGER EXTERNAL,
  dtnsu                        DATE "DD-MM-YYYY"
)

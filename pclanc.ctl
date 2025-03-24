LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pclanc.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pclanc.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pclanc.dsc'
APPEND INTO TABLE PCLANC
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  recnum                   INTEGER EXTERNAL,
  dtlanc                   DATE "DD-MM-YYYY" NULLIF dtlanc=BLANKS,
  codconta                 INTEGER EXTERNAL,
  codfornec                INTEGER EXTERNAL,
  historico                CHAR(200),
  numnota                  INTEGER EXTERNAL,
  duplic                   CHAR(1),
  valor                    "TO_NUMBER(REPLACE(:valor, ',', '.'), '99999999.99')",
  dtvenc                   DATE "DD-MM-YYYY" NULLIF dtvenc=BLANKS,
  vpago                    "TO_NUMBER(REPLACE(:vpago, ',', '.'), '99999999.99')",
  dtpagto                  DATE "DD-MM-YYYY" NULLIF dtpagto=BLANKS,
  localizacao              CHAR(20),
  numnotadev               INTEGER EXTERNAL NULLIF numnotadev=BLANKS,
  valordev                 "TO_NUMBER(REPLACE(:valordev, ',', '.'), '99999999.99')",
  codfilial                CHAR(2),
  indice                   CHAR(1),
  prorrog                  INTEGER EXTERNAL NULLIF prorrog=BLANKS,
  numcheque                CHAR(20),
  numbordero               INTEGER EXTERNAL NULLIF numbordero=BLANKS,
  dtborder                 DATE "DD-MM-YYYY" NULLIF dtborder=BLANKS,
  vpagobordero             "TO_NUMBER(REPLACE(:vpagobordero, ',', '.'), '99999999.99')",
  numseqbordero            INTEGER EXTERNAL NULLIF numseqbordero=BLANKS,
  numcheque2               INTEGER EXTERNAL NULLIF numcheque2=BLANKS,
  numbanco                 INTEGER EXTERNAL NULLIF numbanco=BLANKS,
  descontofin              "TO_NUMBER(REPLACE(:descontofin, ',', '.'), '99999999.99')",
  txperm                   "TO_NUMBER(REPLACE(:txperm, ',', '.'), '99999999.99')",
  tipolanc                 CHAR(1),
  dtemissao                DATE "DD-MM-YYYY" NULLIF dtemissao=BLANKS,
  dtcheq                   DATE "DD-MM-YYYY" NULLIF dtcheq=BLANKS,
  numvia                   INTEGER EXTERNAL NULLIF numvia=BLANKS,
  tipoparceiro             CHAR(1),
  nomefunc                 CHAR(40),
  assinatura               CHAR(40),
  dtassinatura             DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtassinatura=BLANKS,
  tipopagto                CHAR(3),
  numbcodestdoc            INTEGER EXTERNAL NULLIF numbcodestdoc=BLANKS,
  numagdestdoc             INTEGER EXTERNAL NULLIF numagdestdoc=BLANKS,
  numccdestdoc             INTEGER EXTERNAL NULLIF numccdestdoc=BLANKS,
  numdvdestdoc             CHAR(2),
  numcodbarra              CHAR(44),
  numtransent              INTEGER EXTERNAL NULLIF numtransent=BLANKS,
  numtab                   INTEGER EXTERNAL NULLIF numtab=BLANKS,
  codfornecprinc           INTEGER EXTERNAL NULLIF codfornecprinc=BLANKS,
  historico2               CHAR(200),
  moeda                    CHAR(4),
  dtmoeda                  CHAR(1),
  vlirrf                   "TO_NUMBER(REPLACE(:vlirrf, ',', '.'), '99999999.99')",
  vlsestsenat              "TO_NUMBER(REPLACE(:vlsestsenat, ',', '.'), '99999999.999999')",
  numtransadiantfor        INTEGER EXTERNAL NULLIF numtransadiantfor=BLANKS,
  codfuncbaixa             INTEGER EXTERNAL NULLIF codfuncbaixa=BLANKS,
  numagdestdoc2            INTEGER EXTERNAL NULLIF numagdestdoc2=BLANKS,
  numviasfichacp           INTEGER EXTERNAL NULLIF numviasfichacp=BLANKS,
  dvag                     CHAR(2),
  codfuncautor             INTEGER EXTERNAL NULLIF codfuncautor=BLANKS,
  dtautor                  DATE "DD-MM-YYYY" NULLIF dtautor=BLANKS,
  codrotinabaixa           INTEGER EXTERNAL NULLIF codrotinabaixa=BLANKS,
  numtrans                 INTEGER EXTERNAL NULLIF numtrans=BLANKS,
  portadorcheque           CHAR(40),
  codfuncreclassific       INTEGER EXTERNAL NULLIF codfuncreclassific=BLANKS,
  dtreclassific            DATE "DD-MM-YYYY" NULLIF dtreclassific=BLANKS,
  codfuncestornobaixa      INTEGER EXTERNAL NULLIF codfuncestornobaixa=BLANKS,
  dtestornobaixa           DATE "DD-MM-YYYY" NULLIF dtestornobaixa=BLANKS,
  dtprorrog                DATE "DD-MM-YYYY" NULLIF dtprorrog=BLANKS,
  codcomprador             INTEGER EXTERNAL NULLIF codcomprador=BLANKS,
  moedaestrangeira         INTEGER EXTERNAL NULLIF moedaestrangeira=BLANKS,
  cotacao                  "TO_NUMBER(REPLACE(:cotacao, ',', '.'), '99999999.999999')",
  recnumprinc              INTEGER EXTERNAL NULLIF recnumprinc=BLANKS,
  cotacaobaixa             "TO_NUMBER(REPLACE(:cotacaobaixa, ',', '.'), '99999999.99')",
  frota_qtlitros           "TO_NUMBER(REPLACE(:frota_qtlitros, ',', '.'), '99999999.999999')",
  frota_codpraca           INTEGER EXTERNAL NULLIF frota_codpraca=BLANKS,
  frota_numcar             INTEGER EXTERNAL NULLIF frota_numcar=BLANKS,
  frota_codveiculo         INTEGER EXTERNAL NULLIF frota_codveiculo=BLANKS,
  frota_comissao           "TO_NUMBER(REPLACE(:frota_comissao, ',', '.'), '99999999.99')",
  numtransvenda            INTEGER EXTERNAL NULLIF numtransvenda=BLANKS,
  numdiimportacao          CHAR(40),
  adiantamento             CHAR(1),
  frota_dtabastece         DATE "DD-MM-YYYY" NULLIF frota_dtabastece=BLANKS,
  frota_kmabastece         "TO_NUMBER(REPLACE(:frota_kmabastece, ',', '.'), '99999999.99')",
  frota_peso               INTEGER EXTERNAL NULLIF frota_peso=BLANKS,
  dtcotacao                DATE "DD-MM-YYYY" NULLIF dtcotacao=BLANKS,
  valormoedaestrangeira    "TO_NUMBER(REPLACE(:valormoedaestrangeira, ',', '.'), '99999999.999999')",
  percdescfinreal          "TO_NUMBER(REPLACE(:percdescfinreal, ',', '.'), '99999999.99')",
  prest                    CHAR(2),
  numnegociacao            INTEGER EXTERNAL NULLIF numnegociacao=BLANKS,
  nfservico                CHAR(1),
  dtpagadiantfor           DATE "DD-MM-YYYY" NULLIF dtpagadiantfor=BLANKS,
  dtultalter               DATE "DD-MM-YYYY" NULLIF dtultalter=BLANKS,
  codfuncultalter          INTEGER EXTERNAL NULLIF codfuncultalter=BLANKS,
  dtdesd                   DATE "DD-MM-YYYY" NULLIF dtdesd=BLANKS,
  pagtonomedocliente       CHAR(1),
  dtcompetencia            DATE "DD-MM-YYYY" NULLIF dtcompetencia=BLANKS,
  boleto                   CHAR(1),
  codprojeto               INTEGER EXTERNAL NULLIF codprojeto=BLANKS,
  vliss                    "TO_NUMBER(REPLACE(:vliss, ',', '.'), '99999999.999999')",
  vlinss                   "TO_NUMBER(REPLACE(:vlinss, ',', '.'), '99999999.999999')",
  vlcsrf                   "TO_NUMBER(REPLACE(:vlcsrf, ',', '.'), '99999999.999999')",
  funcbloq                 INTEGER EXTERNAL NULLIF funcbloq=BLANKS,
  dtbloq                   DATE "DD-MM-YYYY" NULLIF dtbloq=BLANKS,
  obsbloq                  CHAR(200),
  vlpis                    "TO_NUMBER(REPLACE(:vlpis, ',', '.'), '99999999.999999')",
  vlcofins                 "TO_NUMBER(REPLACE(:vlcofins, ',', '.'), '99999999.99')"
)

LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcmovcr.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcmovcr.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcmovcr.dsc'
APPEND INTO TABLE PCMOVCR
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  numtrans              INTEGER EXTERNAL,
  data                   DATE "DD/MM/YYYY HH24:MI:SS",
  codbanco              INTEGER EXTERNAL,
  codcob                CHAR(4),
  valor                 "TO_NUMBER(REPLACE(:valor, ',', '.'), '99999999.99')",
  tipo                  CHAR(1),
  historico             CHAR(200),
  numcarr               INTEGER EXTERNAL NULLIF numcarr=BLANKS,
  vlsaldo               "TO_NUMBER(REPLACE(:valor, ',', '.'), '99999999.99')",
  hora                  INTEGER EXTERNAL,
  minuto                INTEGER EXTERNAL,
  codfunc               INTEGER EXTERNAL,
  dtconcil              DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtconcil=BLANKS,
  conciliacao           CHAR(2) NULLIF conciliacao=BLANKS,
  codcontadeb           INTEGER EXTERNAL NULLIF codcontadeb=BLANKS,
  codcontacred          INTEGER EXTERNAL NULLIF codcontacred=BLANKS,
  indice                CHAR(1),
  dtestorno             DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtestorno=BLANKS,
  numtransest           INTEGER EXTERNAL NULLIF numtransest=BLANKS,
  vlsaldoconcil         "TO_NUMBER(REPLACE(:vlsaldoconcil, ',', '.'), '99999999.99')",
  dtvenctickt           DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtvenctickt=BLANKS,
  historico2            CHAR(200) NULLIF historico2=BLANKS,
  saldotmp              "TO_NUMBER(REPLACE(:saldotmp, ',', '.'), '99999999.99')",
  operacao              INTEGER EXTERNAL NULLIF operacao=BLANKS,
  numcheque             CHAR(20) NULLIF numcheque=BLANKS,
  codrotinalanc         INTEGER EXTERNAL NULLIF codrotinalanc=BLANKS,
  estorno               CHAR(1),
  codfuncconcil         INTEGER EXTERNAL NULLIF codfuncconcil=BLANKS,
  codfuncestornoconcil  INTEGER EXTERNAL NULLIF codfuncestornoconcil=BLANKS,
  numlanc               INTEGER EXTERNAL NULLIF numlanc=BLANKS,
  numcarreg             INTEGER EXTERNAL NULLIF numcarreg=BLANKS,
  dtexportacaoservint    DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtexportacaoservint=BLANKS,
  exportadoservint      CHAR(1) NULLIF exportadoservint=BLANKS,
  importadoservprinc    CHAR(1) NULLIF importadoservprinc=BLANKS,
  numtransecf           INTEGER EXTERNAL NULLIF numtransecf=BLANKS,
  dtimportacaoservprinc  DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtimportacaoservprinc=BLANKS,
  numvaleecf            INTEGER EXTERNAL NULLIF numvaleecf=BLANKS,
  numcx                 INTEGER EXTERNAL NULLIF numcx=BLANKS,
  duplicbaixa           INTEGER EXTERNAL NULLIF duplicbaixa=BLANKS,
  prestbaixa            CHAR(2) NULLIF prestbaixa=BLANKS,
  dtcompensacao          DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtcompensacao=BLANKS,
  codfilial             CHAR(2),
  codcrecli             INTEGER EXTERNAL NULLIF codcrecli=BLANKS,
  valorcaixa            "TO_NUMBER(REPLACE(:valorcaixa, ',', '.'), '99999999.99')",
  codcli                INTEGER EXTERNAL NULLIF codcli=BLANKS,
  codfuncdnicli         INTEGER EXTERNAL NULLIF codfuncdnicli=BLANKS,
  dtassociadnicli        DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtassociadnicli=BLANKS,
  numdoc                CHAR(20) NULLIF numdoc=BLANKS,
  numseq                INTEGER EXTERNAL NULLIF numseq=BLANKS,
  datacompleta           DATE "DD/MM/YYYY HH24:MI:SS" NULLIF datacompleta=BLANKS,
  dtestornolanc          DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtestornolanc=BLANKS,
  numassocdni           INTEGER EXTERNAL NULLIF numassocdni=BLANKS,
  rotinalancamento      CHAR(100) NULLIF rotinalancamento=BLANKS,
  rotinaconciliacao     CHAR(100) NULLIF rotinaconciliacao=BLANKS,
  rotinacompensacao     CHAR(100) NULLIF rotinacompensacao=BLANKS,
  dtcompensacaoant       DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtcompensacaoant=BLANKS,
  compensacao           CHAR(2) NULLIF compensacao=BLANKS,
  vlsaldocomp           "TO_NUMBER(:vlsaldocomp, '99999999D99', 'NLS_NUMERIC_CHARACTERS='',.''')",
  codfunccomp           INTEGER EXTERNAL NULLIF codfunccomp=BLANKS,
  codfuncaltcomp        INTEGER EXTERNAL NULLIF codfuncaltcomp=BLANKS,
  codplanocontabil      CHAR(50) NULLIF codplanocontabil=BLANKS
)

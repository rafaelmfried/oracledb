LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcbanco.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcbanco.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcbanco.dsc'
APPEND INTO TABLE PCBANCO
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codbanco                       INTEGER EXTERNAL,
  nome                           CHAR,
  numbanco                       INTEGER EXTERNAL,
  agencia                        CHAR,
  conta                          CHAR,
  proxnumch                      INTEGER EXTERNAL,
  codcontabil                    INTEGER EXTERNAL,
  proxnumremessa                 INTEGER EXTERNAL,
  tipocxbco                      CHAR,
  proxnossonumbco                CHAR,
  numcarteira                    CHAR,
  numconvenio                    INTEGER EXTERNAL,
  fluxocx                        CHAR,
  contapagmagnetico              CHAR,
  codfilial                      CHAR,
  numcarteira3                   CHAR,
  proxnumcustodia                INTEGER EXTERNAL,
  faixaini                       CHAR,
  faixafim                       CHAR,
  tipocob                        CHAR,
  variacao                       INTEGER EXTERNAL,
  nomertm                        CHAR,
  agenciaentrega                 CHAR,
  numconveniocustodia            INTEGER EXTERNAL,
  proxnumpagto                   INTEGER EXTERNAL,
  numseqcustodia                 INTEGER EXTERNAL,
  codclientenobanco              CHAR,
  codcontabildni                 INTEGER EXTERNAL,
  codcontabilcobs                INTEGER EXTERNAL,
  codcontabilchdv                INTEGER EXTERNAL,
  gerarboleto                    CHAR,
  agenciacorrespondente          CHAR,
  numcolsvendor                  INTEGER EXTERNAL,
  numdiasprotesto                CHAR,
  nossonumbcopreimpr             CHAR,
  anoremessa                     INTEGER EXTERNAL,
  baixatitulonaoacertado         CHAR,
  baixajurosmenorcm              CHAR,
  naobaixajurosmenorcm           CHAR,
  baixatitulosdescfincm          CHAR,
  vltarifabancaria               "TO_NUMBER(REPLACE(:vltarifabancaria, ',', '.'), '99999999.99')",
  usatarifabancariaporbanco      CHAR,
  codcedente                     CHAR,
  numcodlayoutcustodia           INTEGER EXTERNAL,
  cgcremessa                     CHAR,
  proxnossonumbcoecf             INTEGER EXTERNAL,
  incdupjurosdesd                CHAR,
  valorgerajuros                 "TO_NUMBER(REPLACE(:valorgerajuros, ',', '.'), '99999999.99')",
  nomeprefremessa                CHAR,
  gerarcrecebercartorio          CHAR,
  qthorasmaxfechacx              INTEGER EXTERNAL,
  utilizafechamentocaixa         CHAR,
  percmulta                      "TO_NUMBER(REPLACE(:percmulta, ',', '.'), '9999.99')",
  usabancosec                    CHAR,
  codbancosec                    INTEGER EXTERNAL,
  aceitapgtomenor                CHAR,
  gerarcredclipagmaior           CHAR,
  baixarseminformarfilial        CHAR,
  aceitadepositoverbafornec      CHAR,
  posicao                        CHAR,
  varejo                         CHAR,
  codfunccaixa                   INTEGER EXTERNAL,
  dtabertura                     DATE "DD-MM-YYYY",
  valorminenvioprot              "TO_NUMBER(REPLACE(:valorminenvioprot, ',', '.'), '99999999.99')",
  numconveniocef                 CHAR,
  bloqcredclibaixa               CHAR,
  codcontdespbc                  INTEGER EXTERNAL,
  codlayoutcm                    INTEGER EXTERNAL,
  codbacen                       CHAR,
  gerarreceitapagmaior           CHAR,
  desctarbanc                    CHAR,
  baixatitcomdifvalores          CHAR,
  vlrmaxbaixatitpagar            "TO_NUMBER(REPLACE(NULLIF(:vlrmaxbaixatitpagar, 'NaN'), ',', '.'))",
  geradoisdvbancosafracorresp    CHAR,
  codeventointfolhadeb           CHAR,
  codeventointfolhacred          CHAR,
  tipovalorpagobanrisul          INTEGER EXTERNAL,
  geraxmlnfe                     CHAR,
  gerarcnab444                   CHAR,
  percdescontodia                "TO_NUMBER(REPLACE(:percdescontodia, ',', '.'), '9999.99')",
  utilizabaixacc                 CHAR,
  numconveniopagto               CHAR,
  bancoretorno                   INTEGER EXTERNAL,
  naobaixaaposvencsemvalormulta  CHAR,
  codlayoutcprem                 INTEGER EXTERNAL,
  codlayoutcpret                 INTEGER EXTERNAL,
  gerarnossonumerobasa7digitos   CHAR,
  numdiasbaixatitulo             INTEGER EXTERNAL,
  nossonumbco17digcobcefsigcbreg CHAR,
  somadespvpago                  CHAR,
  validacodbancocm               CHAR,
  baixatitdesconsiderandodesc    CHAR,
  vlrmaximodoc                   "TO_NUMBER(REPLACE(NULLIF(:vlrmaximodoc, 'NaN'), ',', '.'))",
  codlayoutcodbarra              INTEGER EXTERNAL,
  codlayoutretornocr             INTEGER EXTERNAL,
  consideradespcobbanc           CHAR,
  codplanocontabil               CHAR,
  extensaoarqremessa             CHAR,
  codcobcessaoaceita             CHAR,
  txanocessao                    "TO_NUMBER(REPLACE(:txanocessao, ',', '.'), '9999.99')",
  codlayout600rem                INTEGER EXTERNAL
)

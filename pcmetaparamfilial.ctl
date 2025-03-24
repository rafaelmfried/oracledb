LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcmetaparamfilial.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcmetaparamfilial.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcmetaparamfilial.dsc'
APPEND INTO TABLE PCMETAPARAMFILIAL
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  id                        INTEGER EXTERNAL,
  nome                      CHAR(34),
  titulo                    CHAR(300),
  porfilial                 CHAR(1),
  textoajuda                CHAR(2000),
  tipodados                 CHAR(1),
  tamdados                  INTEGER EXTERNAL NULLIF tamdados=BLANKS,
  escaladados               INTEGER EXTERNAL NULLIF escaladados=BLANKS,
  valortrue                 CHAR(1000),
  valorfalse                CHAR(1000),
  assuntos                  CHAR(50),
  origem                    CHAR(2),
  editavel                  CHAR(1),
  pesquisatabela            CHAR(100),
  pesquisacampos            CHAR(200),
  pesquisacampocodigo       CHAR(30),
  pesquisacampodescricao    CHAR(30),
  pesquisaparamnowhere      CHAR(30),
  pesquisasqladicional      CHAR(200),
  pesquisacodrotinacadastro INTEGER EXTERNAL NULLIF pesquisacodrotinacadastro=BLANKS,
  codrotulo                 CHAR(40),
  valordefault              CHAR(1000),
  idnafilial                INTEGER EXTERNAL NULLIF idnafilial=BLANKS,
  idparampai                INTEGER EXTERNAL NULLIF idparampai=BLANKS,
  dtalter                   DATE "YYYY-MM-DD" NULLIF dtalter=BLANKS
)

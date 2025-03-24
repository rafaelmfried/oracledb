LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcgrupo.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcgrupo.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcgrupo.dsc'
APPEND INTO TABLE PCGRUPO
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
  codgrupo              INTEGER EXTERNAL,
  grupo                 CHAR,
  restringirnobalancete CHAR,
  usacontacontabil      CHAR
)

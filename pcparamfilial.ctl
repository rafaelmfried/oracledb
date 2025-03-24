LOAD DATA
INFILE '/opt/oracle/scripts/startup/sql-loader/pcparamfilial.csv'
BADFILE '/opt/oracle/scripts/startup/sql-loader/pcparamfilial.bad'
DISCARDFILE '/opt/oracle/scripts/startup/sql-loader/pcparamfilial.dsc'
APPEND INTO TABLE PCPARAMFILIAL
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
(
  nome,
  codfilial,
  valor,
  dtmxsalter DATE "DD/MM/YYYY HH24:MI:SS" NULLIF dtmxsalter=BLANKS
)

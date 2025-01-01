CREATE OR ALTER VIEW vacc as
SELECT *
FROM
    OPENROWSET(
        BULK 'https://fycesgiacc.blob.core.windows.net/gold/gold_vaccinations/**',
        FORMAT = 'PARQUET'
    ) AS [result];

CREATE OR ALTER VIEW hospi as
SELECT *
FROM
    OPENROWSET(
        BULK 'https://fycesgiacc.blob.core.windows.net/gold/gold_hospitalizations/**',
        FORMAT = 'PARQUET'
    ) AS [result];

SELECT * from hospi


CREATE OR ALTER VIEW case_death as
SELECT *
FROM
    OPENROWSET(
        BULK 'https://fycesgiacc.blob.core.windows.net/gold/gold_cases/**',
        FORMAT = 'PARQUET'
    ) AS [result];

SELECT * from case_death

---------------------------------------- Define Credential -----------------------------------------------
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'password123.A'

CREATE DATABASE SCOPED CREDENTIAL cred_anch

With
    IDENTITY = 'Managed Identity'

-----------------------------------  define variable -----------------------------------------------------

CREATE EXTERNAL DATA SOURCE source_gold
with (

    LOCATION = 'https://fycesgiacc.blob.core.windows.net/gold',
    CREDENTIAL = cred_anch
)

CREATE EXTERNAL DATA SOURCE source_gold_vaccination
with (

    LOCATION = 'https://fycesgiacc.blob.core.windows.net/gold/gold_vaccinations',
    CREDENTIAL = cred_anch
)

CREATE EXTERNAL DATA SOURCE source_gold_hospitalisation
with (

    LOCATION = 'https://fycesgiacc.blob.core.windows.net/gold/gold_hospitalizations',
    CREDENTIAL = cred_anch
)

CREATE EXTERNAL DATA SOURCE source_gold_cases
with (

    LOCATION = 'https://fycesgiacc.blob.core.windows.net/gold/gold_cases/',
    CREDENTIAL = cred_anch
)

CREATE  EXTERNAL FILE FORMAT format_paquet
with
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'

)

----------------------------- Create external table --------------------------------
CREATE EXTERNAL TABLE ext_vacci
WITH (

    LOCATION = 'extvacci',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_paquet
)
AS SELECT * from vacc

CREATE EXTERNAL TABLE ext_hospi
WITH (

    LOCATION = 'exthospit',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_paquet
)
AS SELECT * from hospi

CREATE EXTERNAL TABLE extcase_death
WITH (

    LOCATION = 'extcasedeath',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_paquet
)
AS SELECT * from case_death

-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://datalakeahez51n.dfs.core.windows.net/files/71b7a753-818c-4dda-b5b6-639a9ec9342b/**',
        FORMAT = 'PARQUET'
    ) AS [result]

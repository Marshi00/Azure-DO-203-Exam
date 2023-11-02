-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://datalake5bdznl9.dfs.core.windows.net/files/delta/products-delta/',
        FORMAT = 'DELTA'
    ) AS [result]
 USE AdventureWorks;

 SELECT * FROM Products;
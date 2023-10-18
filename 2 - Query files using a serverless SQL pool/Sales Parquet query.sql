-- This is auto-generated code
SELECT YEAR(orderDate) AS OrderYear,
        COUNT(*) AS OrderedItems
FROM
    OPENROWSET(
        BULK 'https://datalakevuoy7fs.dfs.core.windows.net/files/sales/parquet/year=*/**',
        FORMAT = 'PARQUET'
    ) AS [result]
WHERE [result].filepath(1) IN ('2019', '2020')
GROUP BY YEAR(orderDate)
ORDER BY 1
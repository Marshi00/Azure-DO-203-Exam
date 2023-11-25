 SELECT
     TOP 100 *
 FROM
     OPENROWSET(
         BULK 'https://datalakexxxxxxx.dfs.core.windows.net/files/2023/**',
         FORMAT = 'CSV',
         PARSER_VERSION = '2.0',
         HEADER_ROW = TRUE
     ) AS [result]
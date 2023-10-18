 SELECT *
 FROM
     OPENROWSET(
         BULK 'csv/*.csv',
         DATA_SOURCE = 'sales_data',
         FORMAT = 'CSV',
         PARSER_VERSION = '2.0'
     ) AS orders
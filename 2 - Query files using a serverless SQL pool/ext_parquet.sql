 SELECT *
 FROM  
     OPENROWSET(
         BULK 'parquet/year=*/*.snappy.parquet',
         DATA_SOURCE = 'sales_data',
         FORMAT='PARQUET'
     ) AS orders
 WHERE orders.filepath(1) = '2019'
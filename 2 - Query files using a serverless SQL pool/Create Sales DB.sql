CREATE DATABASE Sales 
COLLATE Latin1_General_100_BIN2_UTF8;

GO;

Use Sales;

GO;

CREATE EXTERNAL DATA SOURCE sales_data WITH (
    LOCATION = 'https://datalakevuoy7fs.dfs.core.windows.net/files/sales/'
);

GO;
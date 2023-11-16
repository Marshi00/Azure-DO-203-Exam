 SELECT *
 FROM OPENROWSET(​PROVIDER = 'CosmosDB',
                 CONNECTION = 'Account=cosmosaz0clp11;Database=AdventureWorks',
                 OBJECT = 'Sales',
                 SERVER_CREDENTIAL = 'cosmosaz0clp11'
 )
 WITH (
     OrderID VARCHAR(10) '$.id',
     OrderDate VARCHAR(10) '$.orderdate',
     CustomerID INTEGER '$.customerid',
     CustomerName VARCHAR(40) '$.customerdetails.customername',
     CustomerEmail VARCHAR(30) '$.customerdetails.customeremail',
     Product VARCHAR(30) '$.product',
     Quantity INTEGER '$.quantity',
     Price FLOAT '$.price'
 )
 AS sales
 ORDER BY OrderID;
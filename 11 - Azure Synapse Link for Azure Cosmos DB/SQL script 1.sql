


SELECT TOP 100 *
FROM OPENROWSET(​PROVIDER = 'CosmosDB',
                CONNECTION = 'Account=cosmosaz0clp11;Database=AdventureWorks',
                OBJECT = 'Sales',
                SERVER_CREDENTIAL = 'cosmosaz0clp11'
) AS [Sales]

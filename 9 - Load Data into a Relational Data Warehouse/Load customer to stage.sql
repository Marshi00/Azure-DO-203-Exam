 COPY INTO dbo.StageCustomer
 (GeographyKey, CustomerAlternateKey, Title, FirstName, MiddleName, LastName, NameStyle, BirthDate, 
 MaritalStatus, Suffix, Gender, EmailAddress, YearlyIncome, TotalChildren, NumberChildrenAtHome, EnglishEducation, 
 SpanishEducation, FrenchEducation, EnglishOccupation, SpanishOccupation, FrenchOccupation, HouseOwnerFlag, 
 NumberCarsOwned, AddressLine1, AddressLine2, Phone, DateFirstPurchase, CommuteDistance)
 FROM 'https://datalakeih40kw5.dfs.core.windows.net/files/data/Customer.csv'
 WITH
 (
 FILE_TYPE = 'CSV'
 ,MAXERRORS = 5
 ,FIRSTROW = 2 -- skip header row
 ,ERRORFILE = 'https://datalakeih40kw5.dfs.core.windows.net/files/'
 );
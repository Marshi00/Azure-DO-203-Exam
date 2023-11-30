 CREATE LOGIN purviewxxxxxxx FROM EXTERNAL PROVIDER;
 GO

 CREATE USER purviewxxxxxxx FOR LOGIN purviewxxxxxxx;
 GO

 ALTER ROLE db_datareader ADD MEMBER purviewxxxxxxx;
 GO
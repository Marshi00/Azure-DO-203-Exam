 CREATE USER purviewxxxxxxx FROM EXTERNAL PROVIDER;
 GO

 EXEC sp_addrolemember 'db_datareader', purviewxxxxxxx;
 GO
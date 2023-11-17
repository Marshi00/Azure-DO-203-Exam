 SELECT  oh.SalesOrderID, oh.OrderDate,
         p.ProductNumber, p.Color, p.Size,
         c.EmailAddress AS CustomerEmail,
         od.OrderQty, od.UnitPrice
 FROM SalesLT.SalesOrderHeader AS oh
 JOIN SalesLT.SalesOrderDetail AS od 
     ON oh.SalesOrderID = od.SalesOrderID
 JOIN  SalesLT.Product AS p 
     ON od.ProductID = p.ProductID
 JOIN SalesLT.Customer as c
     ON oh.CustomerID = c.CustomerID
 ORDER BY oh.SalesOrderID;
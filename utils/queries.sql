

-- query_3.1.2
SELECT D.CalendarDate, AVG(S.PriceInThousand) AS AveragePriceInThousand
FROM SalesFact S
INNER JOIN DateDim D ON S.DateKey = D.DateKey
GROUP BY D.CalendarDate
ORDER BY D.CalendarDate ASC

-- query 2.2.2
SELECT C.Company, C.Model, D.DealerName, D.DealerLocation, D.DealerAddress, C.PriceInThousand
FROM SalesFact S
INNER JOIN CarDim C ON S.CarKey = C.CarKey
INNER JOIN DealerDim D ON S.DealerKey = D.DealerKey
GROUP BY D.DealerName, D.DealerLocation, D.DealerAddress, C.Company, C.CarID, C.Model, C.PriceInThousand
ORDER BY C.CarID ASC
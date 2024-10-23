use project;

#Answer4f
#For Last 7 days
SELECT DISTINCT S.Ticker, S.Name,
       ((D1.Close - D7.Close) / D7.Close) * 100 AS Performance
FROM Securities S
JOIN DailyPrices D1 ON S.SecurityID = D1.SecurityID
JOIN DailyPrices D7 ON S.SecurityID = D7.SecurityID
WHERE D1.Date = (SELECT MAX(Date) FROM DailyPrices)
AND D7.Date = DATE_SUB(D1.Date, INTERVAL 7 DAY)
ORDER BY Performance DESC;


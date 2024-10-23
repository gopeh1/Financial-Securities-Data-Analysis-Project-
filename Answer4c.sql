#Answer4c

use project;

SELECT DISTINCT S.Ticker, S.Name, 
       FLOOR(1000 / D.Close) AS WholeShares,
       1000 / D.Close AS FractionalShares
FROM Securities S
JOIN DailyPrices D ON S.SecurityID = D.SecurityID
WHERE D.Date = (SELECT MAX(Date) FROM DailyPrices WHERE SecurityID = S.SecurityID);


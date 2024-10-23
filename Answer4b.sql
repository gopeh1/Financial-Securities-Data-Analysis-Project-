use project;

#Answer4b

SELECT S.Ticker, S.Name, D.Close
FROM Securities S
JOIN DailyPrices D ON S.SecurityID = D.SecurityID
WHERE D.Date = '2023-07-10';

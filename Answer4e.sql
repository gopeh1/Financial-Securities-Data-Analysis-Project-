#Answer4e

use project;
SELECT 
    DISTINCT today.Ticker,
    today.Close AS TodayClose,
    yesterday.Close AS YesterdayClose
FROM 
    (SELECT dp.*, s.Ticker FROM DailyPrices dp JOIN Securities s ON dp.SecurityID = s.SecurityID WHERE dp.Date = (SELECT MAX(Date) FROM DailyPrices)) today
JOIN 
    (SELECT dp.*, s.Ticker FROM DailyPrices dp JOIN Securities s ON dp.SecurityID = s.SecurityID WHERE dp.Date = (SELECT MAX(Date) FROM DailyPrices) - INTERVAL 1 DAY) yesterday
ON today.SecurityID = yesterday.SecurityID
WHERE today.Close > yesterday.Close;

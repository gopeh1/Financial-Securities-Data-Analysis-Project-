# Answer 4d
use project;
SELECT DISTINCT Date
FROM DailyPrices
WHERE Volume = 0 OR Volume IS NULL
ORDER BY Date;


use project;

#Answer3

INSERT INTO Securities (Ticker, Name, Sector) VALUES 
('AAPL', 'Apple Inc.', 'Technology'),
('AMZN', 'Amazon.com, Inc.', 'Consumer Services'),
('BAC', 'Bank of America Corp', 'Financial'),
('GE', 'General Electric Company', 'Industrials'),
('JPM', 'JPMorgan Chase & Co.', 'Financial'),
('JNJ', 'Johnson & Johnson', 'Healthcare'),
('KO', 'The Coca-Cola Company', 'Consumer Goods'),
('PFE', 'Pfizer Inc.', 'Healthcare'),
('TSLA', 'Tesla, Inc.', 'Consumer Goods'),
('XOM', 'Exxon Mobil Corporation', 'Energy');
-- Insert daily prices for AAPL
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'AAPL'), Date, Open, High, Low, Close, Volume FROM aapl;

-- Insert daily prices for AMZN
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'AMZN'), Date, Open, High, Low, Close, Volume FROM amzn;

-- Insert daily prices for BAC
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'BAC'), Date, Open, High, Low, Close, Volume FROM bac;

-- Insert daily prices for GE
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'GE'), Date, Open, High, Low, Close, Volume FROM ge;

-- Insert daily prices for JPM
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'JPM'), Date, Open, High, Low, Close, Volume FROM jpm;

-- Insert daily prices for JNJ
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'JNJ'), Date, Open, High, Low, Close, Volume FROM jnj;

-- Insert daily prices for KO
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'KO'), Date, Open, High, Low, Close, Volume FROM ko;

-- Insert daily prices for PFE
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'PFE'), Date, Open, High, Low, Close, Volume FROM pfe;

-- Insert daily prices for TSLA
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'TSLA'), Date, Open, High, Low, Close, Volume FROM tsla;

-- Insert daily prices for XOM
INSERT INTO DailyPrices (SecurityID, Date, Open, High, Low, Close, Volume)
SELECT (SELECT SecurityID FROM Securities WHERE Ticker = 'XOM'), Date, Open, High, Low, Close, Volume FROM xom;
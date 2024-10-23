use project;

#Answer2
CREATE TABLE Securities (
    SecurityID INT AUTO_INCREMENT PRIMARY KEY,
    TickerSymbol VARCHAR(10),
    SecurityName VARCHAR(255),
    Market VARCHAR(50)
);

CREATE TABLE DailyPrices (
    TradingDataID INT AUTO_INCREMENT PRIMARY KEY,
    SecurityID INT,
    Date DATE,
    HighPrice DECIMAL(10, 2),
    LowPrice DECIMAL(10, 2),
    ClosingPrice DECIMAL(10, 2),
    VolumeTraded BIGINT,
    FOREIGN KEY (SecurityID) REFERENCES Securities(SecurityID)
);

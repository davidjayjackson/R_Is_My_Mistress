CREATE TABLE exports_daily (
  yearly_date TEXT PRIMARY KEY,
  row_count INTEGER,
  total_sales REAL
);

INSERT INTO exports_daily (yearly_date, row_count, total_sales)
  SELECT yearly_date, 
         count(*) as row_count,
         sum(trade_usd) as total_sales
  FROM exports
  GROUP BY yearly_date;
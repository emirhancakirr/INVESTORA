CREATE TABLE portfolio (
  portfolio_id   INTEGER PRIMARY KEY AUTOINCREMENT,
  name           TEXT NOT NULL,          
  owner_name     TEXT                    
);

CREATE TABLE stocks (
  stock_row_id   INTEGER PRIMARY KEY AUTOINCREMENT,
  portfolio_id   INTEGER NOT NULL,
  stock_symbol   TEXT    NOT NULL,      
  trade_date     DATE    NOT NULL,      
  quantity       REAL    NOT NULL,
  buy_price      REAL    NOT NULL,
  current_price  REAL    NOT NULL,
  FOREIGN KEY (portfolio_id) REFERENCES portfolio(portfolio_id)
);

CREATE TABLE currencies (
  currency_row_id INTEGER PRIMARY KEY AUTOINCREMENT,
  portfolio_id    INTEGER NOT NULL,
  trade_date      DATE    NOT NULL,     
  currency_code   TEXT    NOT NULL,     
  amount          REAL    NOT NULL,     
  current_rate    REAL    NOT NULL,
  total_return    REAL,                 
  monthly_return  REAL,                 
  monthly_return_pct REAL,              
  holding_days    INTEGER,
  FOREIGN KEY (portfolio_id) REFERENCES portfolio(portfolio_id)
);

CREATE TABLE funds (
  fund_row_id     INTEGER PRIMARY KEY AUTOINCREMENT,
  portfolio_id    INTEGER NOT NULL,
  fund_code       TEXT    NOT NULL,      
  fund_name       TEXT    NOT NULL,
  quantity        REAL    NOT NULL,
  cost_date       DATE    NOT NULL,
  current_price   REAL    NOT NULL,
  total_value     REAL,                  
  current_profit  REAL,
  current_profit_pct REAL,
  holding_days    INTEGER,
  avg_monthly_return REAL,
  rank            INTEGER,
  content_note    TEXT,                  
  FOREIGN KEY (portfolio_id) REFERENCES portfolio(portfolio_id)
);

CREATE TABLE deposits (
  deposit_row_id  INTEGER PRIMARY KEY AUTOINCREMENT,
  portfolio_id    INTEGER NOT NULL,
  bank_name       TEXT    NOT NULL,
  amount          REAL    NOT NULL,
  start_date      DATE    NOT NULL,
  end_date        DATE    NOT NULL,
  interest_rate   REAL    NOT NULL,      
  currency_code   TEXT    NOT NULL,      
  FOREIGN KEY (portfolio_id) REFERENCES portfolio(portfolio_id)
);

CREATE TABLE goals (
  goal_id       INTEGER PRIMARY KEY AUTOINCREMENT,
  portfolio_id  INTEGER NOT NULL,
  goal_type     TEXT    NOT NULL,        
  target_value  REAL,
  target_date   DATE,
  FOREIGN KEY (portfolio_id) REFERENCES portfolio(portfolio_id)
);
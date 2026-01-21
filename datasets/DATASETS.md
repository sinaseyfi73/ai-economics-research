# Datasets for AI in Economics & Finance

This document catalogs useful datasets for research in AI applications in economics and finance.

## Financial Market Data

### Stock Market Data
- **Yahoo Finance** (yfinance Python library)
  - Historical stock prices
  - Volume, dividends, splits
  - Real-time data
  - Free, no API key required

- **Alpha Vantage**
  - Stock prices, technical indicators
  - Forex, cryptocurrency
  - Free tier available
  - API key required

- **Quandl/Nasdaq Data Link**
  - Financial and economic data
  - Stock prices, fundamentals
  - Some free, premium available

- **IEX Cloud**
  - Real-time and historical stock data
  - Options, forex, crypto
  - Free tier available

### Options & Derivatives
- **CBOE Data**
  - Options data
  - Volatility indices (VIX)
  - Historical data available

### Cryptocurrency
- **CoinGecko API**
  - Cryptocurrency prices
  - Market data, historical prices
  - Free tier available

- **CryptoCompare**
  - Cryptocurrency data
  - Historical prices, OHLCV
  - Free API

## Economic Data

### US Economic Data
- **FRED (Federal Reserve Economic Data)**
  - Comprehensive US economic data
  - GDP, inflation, unemployment, interest rates
  - Free, API available (fredapi Python library)
  - URL: https://fred.stlouisfed.org/

- **Bureau of Labor Statistics (BLS)**
  - Employment, wages, prices
  - Consumer Price Index (CPI)
  - Producer Price Index (PPI)
  - Free API available

- **Bureau of Economic Analysis (BEA)**
  - National accounts
  - GDP, personal income
  - Regional data
  - Free data access

- **Federal Reserve Economic Data (FRED) API**
  - Python: `fredapi`
  - R: `fredr`
  - Comprehensive economic indicators

### International Economic Data
- **World Bank Open Data**
  - Global economic indicators
  - GDP, population, development indicators
  - Free, API available
  - URL: https://data.worldbank.org/

- **IMF Data**
  - International financial statistics
  - Exchange rates, balance of payments
  - Free access

- **OECD Data**
  - Economic indicators for OECD countries
  - GDP, inflation, employment
  - Free access, API available

- **Eurostat**
  - European Union statistics
  - Economic, social, demographic data
  - Free access

## Central Bank Data

- **Federal Reserve Economic Data (FRED)**
  - US monetary policy data
  - Interest rates, money supply

- **ECB Statistical Data Warehouse**
  - European Central Bank data
  - Euro area statistics

- **Bank of England Database**
  - UK economic and financial data

- **Bank of Japan Statistics**
  - Japanese economic data

## Text Data

### News & Media
- **NewsAPI**
  - News articles from various sources
  - Economic and financial news
  - Free tier available

- **Financial Times API**
  - Financial news articles
  - Premium access required

- **Reuters News API**
  - Financial news
  - API access available

### Social Media
- **Twitter API**
  - Social media sentiment
  - Financial discussions
  - Free tier available (limited)

- **Reddit API**
  - Financial discussions (r/wallstreetbets, r/investing)
  - Sentiment analysis
  - Free access

### Central Bank Communications
- **Federal Reserve Speeches & Statements**
  - FOMC statements
  - Speeches by Fed officials
  - Available on FRED website

- **ECB Press Releases**
  - European Central Bank communications
  - Available on ECB website

## Alternative Data

### Satellite Data
- **Orbital Insight**
  - Satellite imagery for economic indicators
  - Parking lot activity, oil storage
  - Commercial

### Web Scraping
- **Economic Calendar Data**
  - Trading Economics
  - Investing.com
  - Economic event calendars

## Academic Datasets

### Research Repositories
- **Harvard Dataverse**
  - Academic research datasets
  - Economics and finance data
  - Free access

- **Replication Data**
  - Many published papers include replication data
  - Check journal websites
  - AER, QJE, JFE, etc.

## Data Providers (Commercial)

- **Bloomberg Terminal**
  - Comprehensive financial data
  - Expensive, institutional access

- **Refinitiv (formerly Thomson Reuters)**
  - Financial and economic data
  - Professional services

- **S&P Capital IQ**
  - Financial data and analytics
  - Commercial

## Python Libraries for Data Access

```python
# Financial data
import yfinance as yf
import pandas_datareader as pdr
from alpha_vantage.timeseries import TimeSeries

# Economic data
from fredapi import Fred
import pandas_datareader.data as web

# General
import pandas as pd
import numpy as np
```

## R Packages for Data Access

```r
# Financial data
library(quantmod)
library(BatchGetSymbols)

# Economic data
library(fredr)
library(WDI)  # World Bank data
library(Quandl)
```

## Notes

- Always check data licenses and terms of use
- Some datasets require registration
- Commercial datasets may have restrictions
- Keep track of data sources for reproducibility
- Document data preprocessing steps

## Data Quality Considerations

- Data cleaning requirements
- Missing data handling
- Frequency (daily, monthly, quarterly)
- Time zones and trading hours
- Survivorship bias in financial data
- Look-ahead bias prevention

Last Updated: January 2025

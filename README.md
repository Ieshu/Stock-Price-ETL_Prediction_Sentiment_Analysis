# Stock-Price-ETL_Prediction_Sentiment_Analysis

# 1. Introduction

Yahoo finance API is a popular data source for financial data related to stock market. This data can be used to get the
live data of stock, as well as historical stock performance.
Financial data is of great importance for investors and analysts as they tell us about the health of the companies as well
as the market in general.

# 2. Objective

The aim of this project is to extract all stock related information from Yahoo finance and store it in relational data
models. This project also aims to demonstrate the end-to-end data ecosystem using a realistic use case. The project has
the following components:

• Data extraction from API (Yahoo Finance API)

• Data transformation and enrichment

• Data modelling

• Data quality check

• Predictive Analytic

• Sentiment Analysis

# 3. Target Users

The following user groups have been identified so far:

• Retail stock investors

• Stock market analysts

# 4. Database Details

The data model has been designed to accommodate stock information. This consists the following:

• Historical data of stocks (Day wise trend)

• Live status from the market

• Analytical Data related to stocks

# 4.1.Data Source

Data from Yahoo finance has been used to build this project. yfinance is a popular python wrapper to access this API
for free. Thus, this library has been used in this project to access Yahoo Finance API.

# 4.2.Data Model

The relational model consists of the following tables.
Note - Some of these tables are used for storing actual financial data; while other relations are used to support
analytic and predictions.

# 4.3.Entity Relation Diagram

# 4.4.Update Policy.

The tables are updated as per the following logic

• Company - Static Table, manually updated if required

• Company Detail - Static table, manually updated if required

• Stock History - Updated once every day

• Stock Matrix - Updated as per user request

• Mean – Static table. Updated only if the LSTM model is re-trained

• Standard Deviation - Static table. Updated only if the LSTM model is re-trained

# Execution Steps

A. Execute drop.sql to drop the existing tables. This is just to make the project re-runnable.

B. Execute create.sql to create all the relations.

C. Execute load.sql to load data from csv files.

D. Execute Update.py to update the database with the latest market data (optional)

E. Execute Data_Analysis.ipnyb notebook to visualize the data analysis.

F. Execute Prediction.py for stock prediction

G. Execute Sentiment.py for sentiment analysis.

Note – User can use Stock_Insight.ipnyb notebook to get all the information aggregated at one place.
• Twitter Data – Updated when new tweets are fetched from twitter api.

# Predictive Modelling

The stock-market data is analyzed and modelled to design a live prediction for stock price. The historical data obtained
from Yahoo Finance API is non-stationary time-series data and this information is utilized to train a Deep Learning model
to predict the future stock price. Long-Short Term Memory network or shortly LSTM, which is an enhanced version of
Recurrent Neural Network (RNN) is applied for this purpose. LSTM models are very appropriate for complex time-series
data, as it can store and memorize very old information. The historical data is divided into Train and Test followed by
applying the LSTM model on the Train data to determine the performance on unseen Test data. Attached below is a
snap for the actual stock price vs predicted stock price for GOOGLE obtained from the model. 

# Sentiment Analysis

Tweets related to stocks are fetched for the last 10 days of November and the corresponding sentiment values are
calculated to get the attitude of investors towards the stock. The sentiment value is measured by a whole number
ranging between -1 to +1 which is called polarity. The more polarity we have, the more positive/better is the sentiment
and vice-versa. The stock price and the market sentiment are having similar kinds of trends as presumed.

# Conclusion

The user will thus have input from three sources to make decision regarding any stock:

• Recommendation from Yahoo finance

• Predicted future price of the stock

• Current Sentiment about the company

These three data points should be sufficient for an investor to arrive to a decision whether to buy, sell, or hold a stock.

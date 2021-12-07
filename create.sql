--
-- Create Table Script Starts
--

CREATE TABLE IF NOT EXISTS market (
                                    market_code VARCHAR(5) PRIMARY KEY, 
                                    country VARCHAR(50), 
                                    city VARCHAR(50), 
                                    region VARCHAR(50)
                                   );
                                   

CREATE TABLE IF NOT EXISTS company (
                                    symbol varchar(5) PRIMARY KEY,
                                    name VARCHAR(50),
                                    sector VARCHAR(50)
                                   );
                                   
                                   
CREATE TABLE IF NOT EXISTS company_detail (
                                            symbol VARCHAR(5),
                                            market_code VARCHAR(5),
                                            address VARCHAR(100),
                                            city VARCHAR(20),
                                            state VARCHAR(20),
                                            country VARCHAR(20),
                                            phone VARCHAR(15),
                                            summary bytea,
                                            PRIMARY KEY (symbol, market_code),
                                            FOREIGN KEY (symbol) REFERENCES company(symbol),
                                            FOREIGN KEY (market_code) REFERENCES market(market_code)
                                          );
                                          
                                          
CREATE TABLE IF NOT EXISTS stock_history (
                                           market_code VARCHAR(5),
                                           symbol VARCHAR(5),
                                           date DATE,
                                           open float8,
                                           high float8,
                                           low float8,
                                           close float8,
                                           volume float8,
                                           dividend float8,
                                           stock_split float8,
                                           PRIMARY KEY (symbol, market_code, date),
                                           FOREIGN KEY (symbol) REFERENCES company(symbol),
                                           FOREIGN KEY (market_code) REFERENCES market(market_code)
                                         );
                                         
CREATE TABLE IF NOT EXISTS stock_matrix (
                                          market_code VARCHAR(5),
                                          symbol VARCHAR(5),
                                          day_high float8,
                                          day_low float8,
                                          price float8,
                                          recommendation VARCHAR(5),
                                          PRIMARY KEY (symbol, market_code),
                                          FOREIGN KEY (symbol) REFERENCES company(symbol),
                                          FOREIGN KEY (market_code) REFERENCES market(market_code)
                                        );
                                        
CREATE TABLE IF NOT EXISTS means (
                                    symbol VARCHAR(5) PRIMARY KEY,
                                    mean0 float8,
                                    mean1 float8,
                                    mean2 float8,
                                    mean3 float8,
                                    mean4 float8,
                                    mean5 float8,
                                    mean6 float8,
                                    mean7 float8,
                                    mean8 float8,
                                    mean9 float8,
                                    mean10 float8,
                                    mean11 float8,
                                    mean12 float8,
                                    mean13 float8,
                                    mean14 float8,
                                    mean15 float8,
                                    mean16 float8,
                                    mean17 float8,
                                    mean18 float8,
                                    mean19 float8,
                                    mean20 float8,
                                    mean21 float8,
                                    mean22 float8,
                                    mean23 float8,
                                    mean24 float8,
                                    mean25 float8,
                                    mean26 float8,
                                    mean27 float8,
                                    mean28 float8,
                                    mean29 float8,
                                    mean30 float8,
                                    mean31 float8,
                                    mean32 float8,
                                    mean33 float8,
                                    mean34 float8,
                                    mean35 float8,
                                    mean36 float8,
                                    mean37 float8,
                                    mean38 float8,
                                    mean39 float8,
                                    mean40 float8,
                                    mean41 float8,
                                    mean42 float8,
                                    mean43 float8,
                                    mean44 float8,
                                    mean45 float8,
                                    mean46 float8,
                                    mean47 float8,
                                    mean48 float8,
                                    mean49 float8,
                                    mean50 float8,
                                    mean51 float8,
                                    mean52 float8,
                                    mean53 float8,
                                    mean54 float8,
                                    mean55 float8,
                                    mean56 float8,
                                    mean57 float8,
                                    mean58 float8,
                                    mean59 float8,
                                    target_mean float8
                                   );
                                   
CREATE TABLE IF NOT EXISTS standard_deviation (
                                                symbol VARCHAR(5) PRIMARY KEY,
                                                sd0 float8,
                                                sd1 float8,
                                                sd2 float8,
                                                sd3 float8,
                                                sd4 float8,
                                                sd5 float8,
                                                sd6 float8,
                                                sd7 float8,
                                                sd8 float8,
                                                sd9 float8,
                                                sd10 float8,
                                                sd11 float8,
                                                sd12 float8,
                                                sd13 float8,
                                                sd14 float8,
                                                sd15 float8,
                                                sd16 float8,
                                                sd17 float8,
                                                sd18 float8,
                                                sd19 float8,
                                                sd20 float8,
                                                sd21 float8,
                                                sd22 float8,
                                                sd23 float8,
                                                sd24 float8,
                                                sd25 float8,
                                                sd26 float8,
                                                sd27 float8,
                                                sd28 float8,
                                                sd29 float8,
                                                sd30 float8,
                                                sd31 float8,
                                                sd32 float8,
                                                sd33 float8,
                                                sd34 float8,
                                                sd35 float8,
                                                sd36 float8,
                                                sd37 float8,
                                                sd38 float8,
                                                sd39 float8,
                                                sd40 float8,
                                                sd41 float8,
                                                sd42 float8,
                                                sd43 float8,
                                                sd44 float8,
                                                sd45 float8,
                                                sd46 float8,
                                                sd47 float8,
                                                sd48 float8,
                                                sd49 float8,
                                                sd50 float8,
                                                sd51 float8,
                                                sd52 float8,
                                                sd53 float8,
                                                sd54 float8,
                                                sd55 float8,
                                                sd56 float8,
                                                sd57 float8,
                                                sd58 float8,
                                                sd59 float8,
                                                target_sd float8
                                               );
                                               
CREATE TABLE IF NOT EXISTS twitter_data (
                                            id VARCHAR(25) PRIMARY KEY,
                                            tweet_text bytea,
                                            tweet_date DATE,
                                            symbol VARCHAR(5)
                                        );
                                               
--
-- Create Table Script Ends
--
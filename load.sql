--
-- Load Table Script Starts
--

COPY market FROM 'C:\Course_Materials\CSE570DMQL\Project\market.csv' WITH DELIMITER ',' CSV HEADER;
COPY company FROM 'C:\Course_Materials\CSE570DMQL\Project\company.csv' WITH DELIMITER ',' CSV HEADER;
COPY stock_history FROM 'C:\Course_Materials\CSE570DMQL\Project\stock_history.csv' WITH DELIMITER ',' CSV HEADER;
COPY means FROM 'C:\Course_Materials\CSE570DMQL\Project\means.csv' WITH DELIMITER ',' CSV HEADER;
COPY standard_deviation FROM 'C:\Course_Materials\CSE570DMQL\Project\standard_deviation.csv' WITH DELIMITER ',' CSV HEADER;
COPY twitter_data FROM 'C:\Course_Materials\CSE570DMQL\Project\twitter_data.csv' WITH DELIMITER ',' CSV HEADER;

--
-- Load Table Script Ends
--

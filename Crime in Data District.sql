SELECT *
FROM crime
LIMIT 5;

# Goal: Count of Boroughs and Offense Descriptions - top 5

SELECT
	BORO_NM,
    OFNS_DESC,
    COUNT(*) AS Incidents
FROM crime
GROUP BY
	BORO_NM,
    OFNS_DESC
ORDER BY 
	COUNT(*) DESC
LIMIT 5;

# Breakdown of Incidents per hour

SELECT
	HOUR,
    COUNT(*) as Incidents
FROM crime
GROUP BY HOUR
ORDER BY COUNT(*) DESC
LIMIT 5;

# If you want to see the full scope of 24 hours

SELECT
	HOUR,
    COUNT(*) as Incidents
FROM crime
GROUP BY HOUR
ORDER BY HOUR;

# Determine date, time, and lat-long location of a crime 
# Crime details: from Late March 2018, a burglary at a chain store in the Bronx

SELECT
	CMPLNT_FR_DT,
    CMPLNT_FR_TM,
    Lat_Lon
FROM crime
WHERE
	CMPLNT_FR_DT LIKE "2018-03%"
	AND OFNS_DESC LIKE "BURGLARY"
    AND PREM_TYP_DESC LIKE "CHAIN STORE"
    AND BORO_NM LIKE "BRONX";

# With the filters, only one date fits that category; could have done more to directly filter end of month
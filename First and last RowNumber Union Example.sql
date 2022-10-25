/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one 
that comes first when ordered alphabetically.
*/

SELECT 
        City
        ,Length
        
FROM
(
SELECT 
        City
        ,Length(City) AS Length
        ,ROW_NUMBER() OVER ( ORDER BY Length(City) DESC) rn
FROM
        Station
) T
WHERE
        rn = 1

UNION ALL
SELECT 
        City
        ,Length
        
FROM
(
SELECT 
        City
        ,Length(City) AS Length
        ,ROW_NUMBER() OVER ( ORDER BY Length(City),City ) rn
FROM
        Station

) T
WHERE
        rn = 1
ORDER BY 
    Length 
    ,City 

/*
Enter your query here.
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

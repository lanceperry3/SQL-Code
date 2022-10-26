/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/

SELECT distinct 
        City 
FROM 
        STATION 
WHERE 
        RIGHT ( City, 1) NOT IN ('a','e','i','o','u')
        OR 
        LEFT ( City, 1) NOT IN ('a','e','i','o','u')

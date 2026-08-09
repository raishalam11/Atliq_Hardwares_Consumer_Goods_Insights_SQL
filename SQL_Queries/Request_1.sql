
/*
Question 1. Provide the list of markets in which customer "Atliq Exclusive" operates its
business in the APAC region.
*/

use gdb023; -- to use the Atliq Hardware database

SELECT DISTINCT
    market AS 'Operating_Market'
FROM
    dim_customer
WHERE
    customer = 'Atliq Exclusive'
        AND region = 'APAC'
ORDER BY market ASC;





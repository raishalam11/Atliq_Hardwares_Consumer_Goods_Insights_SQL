/*
Question 5. Get the products that have the highest and lowest manufacturing costs.
The final output should contain these fields,
	- product_code
	- product
	- manufacturing_cost
*/

SELECT 
    p.product_code,
    CONCAT(p.product, ' - ', p.variant) AS product,
    ROUND(fmc.manufacturing_cost, 2) AS manufacturing_cost
FROM
    dim_product AS p
        INNER JOIN
    fact_manufacturing_cost AS fmc ON p.product_code = fmc.product_code
WHERE
    fmc.manufacturing_cost = (SELECT 
            MIN(manufacturing_cost)
        FROM
            fact_manufacturing_cost)
        OR fmc.manufacturing_cost = (SELECT 
            MAX(manufacturing_cost)
        FROM
            fact_manufacturing_cost);

use Greenspace;

-- Q1 : A simple query that pulls all columns and rows from a table
SELECT 
    *
FROM
    clients;
-- Q2: A query that displays a subset of columns
SELECT 
    id, name, city
FROM
    clients;
-- Q3 : A query that displays a subset of columns with a single clause (predicate) WHERE statement
select id, name from clients where city= 'Los Angeles';
-- Q4 : A query that displays a subset of columns with a multi-clause (predicate) WHERE statement using AND/OR
SELECT 
    *
FROM
    services
WHERE
    cost = 29.99 OR name = 'Tire%';
-- Q5 : A query that performs a single table join.  In other words, you are joining 2 tables.
SELECT 
    countries.name AS Country_name,
    states_provinces.name AS States_provinces_name
FROM
    countries
        JOIN
    states_provinces ON countries.id = states_provinces.country_id;
-- Q6 : A query that performs a multi-table join. In other words, you are joining 3 or more tables.
SELECT 
    clients.name as Client_name,
    countries.name as Country_name,
    sales_order_services.service_schedule_date
FROM
    countries
        JOIN
    clients ON countries.id = clients.country_id
        JOIN
    sales_order_services ON clients.id = sales_order_services.client_id;
-- Q7 : A query that performs an aggregate (count, min, max, sum, avg, etc.).
SELECT 
    MIN(cost) AS Minimum_cost,
    MAX(cost) AS Maximum_cost
FROM
    services;
    -- Q8 : A query that performs an aggregate (count, min, max, sum, avg, etc.) with a GROUP BY.
SELECT 
    name, cost,   AVG(cost) AS Average_cost
FROM
    services
GROUP BY id;
-- Q9 : A query that performs an aggregate (count, min, max, sum, avg, etc.). with a GROUP BY and a HAVING clause
SELECT 
    name, description, MAX(cost) AS Maximum_cost
FROM
    services
GROUP BY id
HAVING MAX(cost) < 150;
-- Q10 : A query that performs a subquery either as part of the WHERE clause or as a derived/virtual table.
SELECT 
    *
FROM
    sales_order_services
WHERE
    client_id IN (SELECT 
            id
        FROM
            clients
        WHERE
            city = 'Toronto');
-- Q11 : A query that performs an aggregate with a join and a group by.
SELECT 
    states_provinces.id,
    COUNT(clients.id) AS Count_id,
    clients.name AS Client_name
FROM
    clients
        JOIN
    states_provinces ON clients.state_province_id = states_provinces.id
GROUP BY clients.id;



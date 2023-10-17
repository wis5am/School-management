

use Greenspace;
-- Q1
CREATE VIEW Query_4 AS
    SELECT 
        *
    FROM
        services
    WHERE
        cost = 29.99 OR name LIKE 'Tire%';
    -- Q2
CREATE VIEW Query_9 AS
    SELECT 
        name, description, MAX(cost) AS Maximum_cost
    FROM
        services
    GROUP BY id
    HAVING MAX(cost) < 150;
    
    -- Display the data:
    select * from query_4;
    select * from query_9;
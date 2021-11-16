--- Which source is driving the most sales?

select
    PEOPLE.source,
    sum(ORDERS.TOTAL) as "Sales $"
from  ORDERS
JOIN PEOPLE on PEOPLE.ID = ORDERS.USER_ID
group by PEOPLE.source 
ORDER BY "Sales $" DESC

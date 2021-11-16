-- Where are our sales happening?

select
    PEOPLE.STATE,
    sum(ORDERS.TOTAL)
from ORDERS 
join PEOPLE on PEOPLE.ID = ORDERS.USER_ID
group by PEOPLE.STATE;

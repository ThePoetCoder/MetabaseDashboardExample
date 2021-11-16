-- Average Ratings this Month

select
    parsedatetime(formatdatetime(REVIEWS.CREATED_AT, 'yyyyMM'), 'yyyyMM') as month_,
    AVG(REVIEWS.RATING)
FROM REVIEWS
GROUP BY month_
ORDER BY month_;

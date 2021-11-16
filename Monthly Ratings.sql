-- Sum & avg of ratings over the months
SELECT 
    parsedatetime(formatdatetime(REVIEWS.CREATED_AT, 'yyyyMM'), 'yyyyMM') AS month_, 
    SUM(REVIEWS.RATING),
    AVG(REVIEWS.RATING)
FROM REVIEWS
GROUP BY month_
ORDER BY month_ ASC

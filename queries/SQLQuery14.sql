DECLARE @FirstDayNextMonth DATE = DATEADD(MONTH, 1, DATEADD(DAY, 1-DAY(GETDATE()), CAST(GETDATE() AS DATE)))
DECLARE @FirstDayMonthAfterNext DATE = DATEADD(MONTH, 1, @FirstDayNextMonth)

SELECT 
    COUNT(*) AS expiring_subscriptions
FROM 
    Subscriptions
WHERE 
    is_active = 1
    AND end_date >= @FirstDayNextMonth
    AND end_date < @FirstDayMonthAfterNext;
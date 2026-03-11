-- Query: High vs. Low Revenue ACO Breakdown by Track Type
-- Description: 
-- Table: healthcare_records
-- Author: Tevin S.
-- Date: 2026-03

SELECT
    track_type,
    COUNT(*) AS total_acos,
    SUM(CASE WHEN high_revenue_aco = '1' THEN 1 ELSE 0 END) AS high_revenue,
    SUM(CASE WHEN low_revenue_aco = '1' THEN 1 ELSE 0 END) AS low_revenue
FROM healthcare_records
GROUP BY track_type
ORDER BY total_acos DESC;
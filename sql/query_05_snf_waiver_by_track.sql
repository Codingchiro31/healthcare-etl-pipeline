-- Query: Advanced Payment Adoption
-- Description: 
-- Table: healthcare_records
-- Author: Tevin S.
-- Date: 2026-03

SELECT
    track_type,
    basic_track_level,
    COUNT(*) AS total_acos,
    SUM(CASE WHEN snf_3_day_rule_waiver = '1' THEN 1 ELSE 0 END) AS snf_waiver_adopted,
    ROUND(
        SUM(CASE WHEN snf_3_day_rule_waiver = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1
    ) AS adoption_pct
FROM healthcare_records
GROUP BY track_type, basic_track_level
ORDER BY track_type, basic_track_level;
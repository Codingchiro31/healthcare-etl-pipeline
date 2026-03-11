-- Query: Prospective vs. Retrospective Methods by Track Type
-- Description:  Compares prospective vs retrospective beneficiary assignment methods by track type, which directly affects how ACOs manage population health and financial risk.
-- Table: healthcare_records
-- Author: Tevin S.
-- Date: 2026-03

SELECT
    track_type,
    COUNT(*) AS total_acos,
    SUM(CASE WHEN prospective_assignment = '1' THEN 1 ELSE 0 END) AS prospective,
    SUM(CASE WHEN retrospective_assignment = '1' THEN 1 ELSE 0 END) AS retrospective
FROM healthcare_records
GROUP BY track_type
ORDER BY total_acos DESC;

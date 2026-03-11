-- Query: PC Flex Agreement Status Distribution
-- Description: 
-- Table: healthcare_records
-- Author: Tevin S.
-- Date: 2026-03

-- PC Flex agreement status distribution
SELECT
    pc_flex_agreement_status,
    track_type,
    COUNT(*) AS total_acos
FROM healthcare_records
GROUP BY pc_flex_agreement_status, track_type
ORDER BY total_acos DESC;
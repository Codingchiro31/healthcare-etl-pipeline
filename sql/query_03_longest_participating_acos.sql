-- Query: Longest Participating ACOs
-- Description: 
-- Table: healthcare_records
-- Author: Tevin S.
-- Date: 2026-03

SELECT
    aco_name,
    track_type,
    initial_start_date,
    current_start_date,
    EXTRACT(YEAR FROM AGE(
        current_start_date::date, 
        initial_start_date::date
    )) AS years_in_program
FROM healthcare_records
WHERE initial_start_date IS NOT NULL
ORDER BY initial_start_date::date ASC
LIMIT 20;
-- Query: Track Type Distribution
-- Description: Breaks down ACO participation by track type and level
-- Table: healthcare_records
-- Author: Tevin S.
-- Date: 2026-03

SELECT
    track_type,
    basic_track_level,
    COUNT(DISTINCT aco_name)  AS num_acos,
    SUM(high_revenue_aco)     AS high_revenue_count,
    SUM(low_revenue_aco)      AS low_revenue_count
FROM healthcare_records
GROUP BY track_type, basic_track_level
ORDER BY track_type, basic_track_level NULLS LAST;
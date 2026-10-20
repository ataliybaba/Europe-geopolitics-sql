-- ==========================================
-- Project: Europe Geopolitics & OSINT Monitor
-- Description: Analytical queries for conflict data
-- ==========================================

-- Query 1: Find the Top 5 High-Risk Countries
SELECT 
    c.country_name, 
    COUNT(e.event_id) AS total_events,
    SUM(e.severity) AS total_severity,
    ROUND(AVG(e.severity), 2) AS avg_severity
FROM conflict_events e
JOIN countries c ON e.country_id = c.country_id
GROUP BY c.country_name
ORDER BY total_severity DESC
LIMIT 5;

-- Query 2: Track Cyberattacks Over Time
SELECT 
    TO_CHAR(event_date, 'YYYY-MM') AS year_month,
    COUNT(event_id) AS total_cyberattacks,
    SUM(economic_impact_millions) AS total_economic_damage
FROM conflict_events
WHERE event_type = 'Cyberattack'
GROUP BY year_month
ORDER BY year_month DESC;

-- Query 3: The Source Reliability Check
SELECT 
    s.source_name,
    s.reliability_score,
    COUNT(e.event_id) AS reports_filed
FROM osint_sources s
LEFT JOIN conflict_events e ON s.source_id = e.source_id
GROUP BY s.source_name, s.reliability_score
ORDER BY reports_filed DESC;
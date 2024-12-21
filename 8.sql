SELECT `WHO Region`,
       COUNT(DISTINCT `Country/Region`) AS country_count
FROM worldometer_data
GROUP BY `WHO Region`
ORDER BY country_count DESC
LIMIT 5;

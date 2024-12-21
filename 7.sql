USE `Covid-19`;

SELECT w.`Country/Region`,
       w.TotalCases,
       w.TotalDeaths,
       c.`New cases`,
       c.`New deaths`
FROM worldometer_data w
JOIN country_wise_latest c
    ON w.`Country/Region` = c.`Country/Region`
ORDER BY c.`New cases` DESC
LIMIT 10;
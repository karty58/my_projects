SELECT `Country/Region`,
       CONCAT('Total Cases: ', FORMAT(TotalCases, 0)) AS formatted_cases
FROM worldometer_data;

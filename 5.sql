SELECT `Country/Region`,
           TotalCases ,
       CASE
           WHEN TotalCases > 1000000 THEN 'High'
           WHEN TotalCases BETWEEN 100000 AND 1000000 THEN 'Medium'
           ELSE 'Low'
       END AS case_category
FROM worldometer_data;

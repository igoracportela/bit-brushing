# Challenge: https://www.hackerrank.com/challenges/occupations/problem
# 
# Author: Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github: @igoracportela
#

SELECT MAX(CASE WHEN Occupation = 'Doctor' THEN Name END),
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END),
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END),
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END)
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY name) AS ranking
    FROM OCCUPATIONS
) fr
GROUP BY ranking

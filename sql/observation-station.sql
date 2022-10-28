#
# Author: Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github: @igoracportela
#
# Challenge: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
#
SELECT ROUND(LAT_N, 4) FROM station WHERE LAT_N >= 38.770 ORDER BY LAT_N ASC LIMIT 1

#
# Challenge: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
#
SELECT ROUND(LONG_W, 4) FROM station WHERE LAT_N >= 38.7780 ORDER BY LAT_N ASC LIMIT 1

#
# Challenge: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
#
SELECT ROUND(
  (
    (MAX(LAT_N)-MIN(LAT_N))+(MAX(LONG_W)-MIN(LONG_W))
  ),4)
FROM station

#
# Challenge: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
#
SELECT ROUND(
  POWER(
    POWER(MAX(LAT_N)-MIN(LAT_N),2) + POWER(MAX(LONG_W)-MIN(LONG_W ),2),1/2
  ),4)
FROM station

#
# Challenge: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
#
SELECT
  ROUND(LAT_N, 4)
FROM 
  (SELECT LAT_N, RANK() OVER(ORDER BY LAT_N) as av FROM STATION) AS sub
WHERE 
  av = (SELECT CEIL(COUNT(LAT_N)/2) FROM STATION)

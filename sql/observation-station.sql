# Challenge: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
#
# Author: Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github: @igoracportela
#
SELECT ROUND(LAT_N, 4) FROM station WHERE LAT_N >= 38.770 ORDER BY LAT_N ASC LIMIT 1

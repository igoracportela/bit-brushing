# Challenge: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
#
# Author: Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github: @igoracportela
#
WITH RECURSIVE P(n) AS(
    SELECT 1 UNION ALL SELECT n + 1 FROM P WHERE n < 20
)

SELECT REPEAT('* ', n) FROM P

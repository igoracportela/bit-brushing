
# Challenge: https://www.hackerrank.com/challenges/the-pads/problem
#
# Author: Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github: @igoracportela
#

SELECT CONCAT(Name,'',CONCAT('(','',CONCAT(LEFT(Occupation,1),'', ')')) ) FROM OCCUPATIONS ORDER BY Name;

SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(occupation),'s','.') FROM OCCUPATIONS GROUP BY Occupation ORDER BY COUNT(Occupation);

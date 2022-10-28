# Challenge: https://www.hackerrank.com/challenges/what-type-of-triangle
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#

select 
case
  when (A + B) <= C or (A + C) <= B or (B + C) <= A then 'Not A Triangle'
  when A = B and B = C then 'Equilateral'
  when A = B or A = C then 'Isosceles'
else
  'Scalene'
end
from Triangles;

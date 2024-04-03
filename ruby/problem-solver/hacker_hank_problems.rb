#
# https://www.hackerrank.com/challenges/apple-and-orange/problem
#

def countApplesAndOranges(s, t, a, b, apples, oranges)
    count_apples = 0
    count_oranges = 0
  
    apples.each do |distance|
      apple_position = a + distance
      count_apples += 1 if apple_position >= s && apple_position <= t
    end
  
    oranges.each do |distance|
      orange_position = b + distance
      count_oranges += 1 if orange_position >= s && orange_position <= t
    end
  
    puts count_apples
    puts count_oranges
end

first_multiple_input = gets.rstrip.split
s = first_multiple_input[0].to_i
t = first_multiple_input[1].to_i
second_multiple_input = gets.rstrip.split
a = second_multiple_input[0].to_i
b = second_multiple_input[1].to_i
third_multiple_input = gets.rstrip.split
m = third_multiple_input[0].to_i
n = third_multiple_input[1].to_i
apples = gets.rstrip.split.map(&:to_i)
oranges = gets.rstrip.split.map(&:to_i)

countApplesAndOranges(s, t, a, b, apples, oranges)

#
# https://www.hackerrank.com/challenges/kangaroo/problem
#
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'kangaroo' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER x1
#  2. INTEGER v1
#  3. INTEGER x2
#  4. INTEGER v2
#

def kangaroo(x1, v1, x2, v2)
   
  return 'NO' if v1 > v2 && x1 > x2
  return 'NO' if v2 > v1 && x2 > x1

  return 'YES' if v1 == v2 && x1 == x2
  return 'NO' if v1 == v2 && x1 != x2

  jumps = (x2 - x1).abs / (v1 - v2).abs

  return 'YES' if (x1 + v1 * jumps) == (x2 + v2 * jumps)
  'NO'

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')
first_multiple_input = gets.rstrip.split
x1 = first_multiple_input[0].to_i
v1 = first_multiple_input[1].to_i
x2 = first_multiple_input[2].to_i
v2 = first_multiple_input[3].to_i

result = kangaroo x1, v1, x2, v2

fptr.write result
fptr.write "\n"
fptr.close()

#
# https://www.hackerrank.com/challenges/between-two-sets/problem
#
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def getTotalX(a, b)
    n = a.max
    m = b.min
    count = 0
  
    while n <= m
      if a.all? { |x| n % x == 0 } && b.all? { |x| x % n == 0 }
        count += 1
      end
      n += a.max
    end
  
    count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')
first_multiple_input = gets.rstrip.split
n = first_multiple_input[0].to_i
m = first_multiple_input[1].to_i
arr = gets.rstrip.split.map(&:to_i)
brr = gets.rstrip.split.map(&:to_i)
total = getTotalX arr, brr

fptr.write total
fptr.write "\n"
fptr.close()


#
# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
#
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
  min_score = scores[0]
  max_score = scores[0]
  min_count = 0
  max_count = 0

  scores.each do |score|
    if score < min_score
      min_score = score
      min_count += 1
    elsif score > max_score
      max_score = score
      max_count += 1
    end
  end

  [max_count, min_count]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"
fptr.close()

#
# https://www.hackerrank.com/challenges/2d-array/problem
#
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'hourglassSum' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def hourglass_sum(arr)
  max_sum = -Float::INFINITY

  for i in 0..3
    for j in 0..3
      top_row = arr[i][j..j+2].sum
      middle_row = arr[i+1][j+1]
      bottom_row = arr[i+2][j..j+2].sum
      hourglass_sum = top_row + middle_row + bottom_row
      max_sum = [max_sum, hourglass_sum].max
    end
  end

  max_sum
end

# Get input from user
arr = Array.new(6) { gets.strip.split.map(&:to_i) }

# Call the function and print the result
puts hourglass_sum(arr)

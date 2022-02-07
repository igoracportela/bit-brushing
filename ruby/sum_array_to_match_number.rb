# DESCRIPTION => 
#   Given all numbers where the sum is equal result var
# -----------
# INPUT
# numbers: [0, 1, 2, 3, 5, 6, 9, 11]
# result: 7
# -----------
# OUTPUT
# 1 + 6 = 7
# 2 + 5 = 7
# -----------
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#

def numbers_with_sum_equal(result, numbers)
  final_result = []
  count = 0

  numbers.map do |number|
    quantity = numbers.size-1 - count

    quantity.times do |position|
      next_position = position + 1
      numbers.size.times do
        custom_sum = numbers[position].to_i + numbers[next_position].to_i
        
        final_result << "#{numbers[position]} + #{numbers[next_position]} = #{result}" if custom_sum == result
        next_position += 1
      end
    end

    count += 1
  end

  final_result.uniq
end

numbers = [0, 1, 2, 3, 5, 6, 9, 11]
result = 7
puts numbers_with_sum_equal(result, numbers)

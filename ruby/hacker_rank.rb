# DESCRIPTION => https://www.hackerrank.com/challenges/acm-icpc-team/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def acm_team(topic)
  max_topics = 0
  max_teams = 0
  topics = 0

  topic.each_with_index do |top, i|
 
    0.upto(topic[i].size) do |j|
      if topic[j] == '1' || top[i][j] == '1'
        topics += 1
      end
    end
          
    pair = topics

    if pair > max_topics
      max_topics = pair
      max_teams = 1
    elsif pair == max_topics
      max_teams += 1
    end
  end

  "#{max_topics} #{max_teams}"
end

acm_team(["10101", "11100", "11010", "00101"])

# DESCRIPTION => https://www.hackerrank.com/challenges/alternating-characters/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def alternating_characters(str)
  return 0 if str.size <= 1

  count = 0
  1.upto(str.size) do |i|
    if str[i] == str[i-1]
      count += 1
    end
  end
  count
end

inputs = ["AAAA", "BBBBB","ABABABAB", "BABABA", "AAABBB"]
inputs.count do |input|
  puts alternating_characters(input)
end

# DESCRIPTION https://www.hackerrank.com/challenges/ruby-enumerable-introduction/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def iterate_colors(colors)
  arr = []
  colors.count{ |color| arr << color }
  arr
end

# DESCRIPTION => https://www.hackerrank.com/challenges/a-very-big-sum/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def very_big_sum(array)
  array.reduce(:+)
end

numbers = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
puts very_big_sum(numbers)

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def skip_animals(animals, skip)
  skip_animals = []

  animals.each_with_index do |animal, index|
    skip_animals << "#{index}:#{animal}" if index >= skip
  end

  skip_animals
end

arr = ['leopard', 'bear', 'fox', 'wolf']
puts skip_animals(arr, 2)

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-enumerable-any-all-none-find/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def func_any(hash)
  hash.any?{ |key, value| key.is_a?(Integer) }
end

def func_all(hash)
  hash.all?{ |key, value| value.is_a?(Integer) && value < 10 }
end

def func_none(hash)
  hash.none?{ |key, value| value.nil? }
end

def func_find(hash)
  hash.find {|key, value| ((key.is_a? Integer) && (value.is_a? Integer) && (value < 20)) || ((key.is_a? String) && (value[0] == 'a'))}
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-enumerable-group-by/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def group_by_marks(marks, pass_marks)
  marks.group_by { |key, value| (value >= pass_marks) ? "Passed" : "Failed" }
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def rot13(secret_messages)
  secret_messages.map {|x| x.tr("a-z", "n-za-m") }
end

# https://www.hackerrank.com/challenges/ruby-methods-introduction/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def prime?(number)
  number > 1 && (2...number).all?{ |i| number % i != 0}
end

# https://www.hackerrank.com/challenges/ruby-methods-arguments/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def take(s, len=1)
  s.drop(len)
end

# https://www.hackerrank.com/challenges/ruby-methods-variable-arguments/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def full_name(first, *rest)
  rest.reduce(first){ |k, v| "#{k} #{v}" }
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-methods-keyword-arguments/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
@hash = {   k_to_c: Proc.new { |k| k - 273.15 } ,
            f_to_c: Proc.new { |f| (f - 32) * 5.0/9.0},
            c_to_f: Proc.new { |c| c * 5.0/9.0 + 32},
            c_to_k: Proc.new { |c| c + 273.15},
            k_to_f: Proc.new { |k| k * 5.0/9.0 + 32 + 273.15},
            f_to_k: Proc.new { |f| (f - 32) * 5.0/9.0 + 273.15}
}

def convert_temp (temp, input_scale: 'kelvin', output_scale: 'celsius')
    return temp if input_scale == output_scale

    sym = "#{input_scale[0]}_to_#{output_scale[0]}".to_sym
    proc = @hash[sym]

    proc ? proc.call(temp) : temp
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-blocks/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
p (1..gets.to_i).reduce(1, :*)

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-procs/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def square_of_sum (my_array, proc_square, proc_sum)
	sum = proc_sum.call(my_array)
	proc_square.call(sum)
end

proc_square_number = lambda{|n|n**2}
proc_sum_array     = lambda{|a|a.reduce(0,:+)}
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-lambdas/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
square      = lambda{|n| n ** 2 }
plus_one    = lambda{|n| n + 1}
into_2      = lambda{|n| n * 2}
adder       = lambda{|a, b| a + b } 
values_only = lambda{|hash| hash.values } 

input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e



# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-closures/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def block_message_printer
  message = "Welcome to Block Message Printer"
  if block_given?
      yield
  end
  puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

#####################################################################################

def proc_message_printer(my_proc)
  message = "Welcome to Proc Message Printer"
  my_proc[]
  puts "But in this function/method message is :: #{message}"
end

my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)

######################################################################################
  
def lambda_message_printer(my_lambda)
  message = "Welcome to Lambda Message Printer"
  my_lambda[]
  puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)

######################################################################################


# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-partial-applications/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
combination = lambda{|n|
  lambda{|r|
      k=1
      r.times{|i| k = k*(n-i) / (i+1)}
      k
  }
}

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-curry/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
power_function = -> (x, z) {
	(x) ** z
}

base = gets.to_i
raise_to_power = power_function.curry[base]

power = gets.to_i
puts raise_to_power.(power)

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-strings-introduction/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def single_quote
	'Hello World and others!'
end

def double_quote
	"Hello World and others!"
end

def here_doc
<<EOM
Hello World and others!
EOM
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-strings-encoding/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def transcode(text)
  text.force_encoding("UTF-8")
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-strings-indexing/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def serial_average(fixed_string)
  tmp1 = "#{fixed_string[4,5]}".to_f
  tmp2 = "#{fixed_string[10,5]}".to_f
  tmp = (tmp1 + tmp2) / 2
  ret_string = "#{fixed_string[0, 4]}#{tmp.round(2)}"
end


# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-strings-iteration/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def count_multibyte_char(string)
  string.each_char.count{|char| char.bytesize > 1} 
end

# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-strings-methods-i/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def process_text(strings)
  str = ""
  strings.each do |word|
      str.concat(word.strip.concat(" "))
  end
  str = str.chop
end

def process_text(array_text) array_text.map(&:strip)*' ' end


# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-strings-methods-ii/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def mask_article(str, arr)
    arr.each{|element| str.gsub!(element, &method(:strike))}
    str
end

def strike(str)
    "<strike>#{str}</strike>"
end
  
# DESCRIPTION => https://www.hackerrank.com/challenges/ruby-lazy/problem
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
require 'prime'

result =
  Enumerator.new do |enum|
    Prime.map do |prim|
        enum << prim if prim.to_s == prim.to_s.reverse
    end
  end
p result.take(gets.to_i)

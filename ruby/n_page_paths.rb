# N-Page Paths Coding Challenge
# Given a text file, read the file and show the path, according to the parameter(path_size), which is repeated the most and how many times

def solution(path_size)
  entry = "p1,p2,p3,p2,p3,p2\np2,p3,p2,p3\np7,p4,p2,p3,p2,p3\np2,p3\np1,p3,p2,p3,p2\np2,p3,p2,p5"
  count = 0
  line = 1
  hash = {}
  new_hash = {}
  
  entry.split("\n").each_with_index do |text, index|
    hash[index] = text.split(",")
  end
  
  hash.each_with_index do |value, index|

    if hash[index].size >= path_size
      0.upto(hash[index].size) do |position|
        if hash[index][position..(path_size-1)+count].size == path_size
          abs_index = "#{line}#{index}#{count}".to_i
          
          new_hash[abs_index] = hash[index][position..(path_size-1)+count]
        end
        count += 1
      end
    end
    count = 0
    line += 1
  end


  final_arr = []
  new_hash.each_value do |v|
    final_arr << v
  end

  counts = Hash.new(0)
  final_arr.each { |arr| counts[arr] += 1 }
  
  number_of_occurrences = counts.values.max
  result = counts.map { | k,v | k.join(",") if v==counts.values.max }.compact.to_s.gsub(/(["\[\]])/, '')

  puts "The most common #{path_size}-page path is #{result} with #{number_of_occurrences} occurrences"
end

solution(4)

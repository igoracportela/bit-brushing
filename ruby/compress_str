# Needs inform the quantity of numbers of letters duplicate in sequence
#

def compress(str)
  str_trait = str.split(//)
  count = 0
  new_str = []
  hash = {}
  repeated_element = ''
  position = []
 
  str_trait.each_with_index do |e, i|
    if str_trait[i] == str_trait[i+1] || str_trait[i] == str_trait[i-1]
      count +=1
      repeated_element = str_trait[i]
      position << i
      hash.store(repeated_element, [count, position])
    end
  end

  hash.each do |k, v|
    str_trait.slice!(v[1][1]..v[1].last)
    str_trait[v[1][0]] = "#{k}x#{v[0]}"
  end
  puts str_trait.join('')
end
 
puts compress("aaaaca")

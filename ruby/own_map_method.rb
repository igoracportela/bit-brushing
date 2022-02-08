# DESCRIPTION
# Implement your own version of Ruby's #map enumerable method
 
def map(array)
 new_array = []
 
 array.each do |element|
   new_array << yield element
 end
 
 new_array
end
 
numbers = [1,2,3]
puts map(numbers){ |n| n + 1 }

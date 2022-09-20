#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#

def quick_sort_algo(array, first_elem, last_elem)
 if first_elem < last_elem
   index = part(array, first_elem, last_elem)
   quick_sort_algo(array, first_elem, index-1)
   quick_sort_algo(array, index+1, last_elem)
 end
 
 array.join('')
end
 
def part(array, first_elem, last_elem)
 pivot = array[last_elem]
 index = first_elem
 i = first_elem
 while i < last_elem
   if array[i].to_i <= pivot.to_i
     temporary = array[i]
     array[i] = array[index]
     array[index] = temporary
     index += 1
   end
   i += 1
 end
 temporary = array[index]
 array[index] = pivot
 array[last_elem] = temporary
 
 index
end

# Call the method
int = [4,3,5,1,2]
puts quick_sort_algo(int, 0, 4)

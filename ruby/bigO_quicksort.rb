#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#

def quicksort(arr)
  return arr if arr.size <= 1

  # Pick the pivot element
  pivot = arr.last

  # Partition the array
  left = []
  right = []
  arr[0...-1].each do |x|
    if x < pivot
      left << x
    else
      right << x
    end
  end

  # Recursively
  quicksort(left) + [pivot] + quicksort(right)
end

# Usage
arr = [7, 2, 9, 4, 1, 8, 5, 6, 3]
sorted_arr = quicksort(arr)
p sorted_arr.inspect
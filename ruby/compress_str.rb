# Needs inform the quantity of numbers of letters duplicate in sequence
#

def compress_str(string)
  ind = 0
  comp_str = ""
  len_str = string.length
  while (ind != len_str) do
    count = 1

    while ((ind < (len_str-1)) and (string[ind] == string[ind+1])) do
      count += 1
      ind += 1
    end

    if count == 1
      comp_str = comp_str + string[ind].to_s
    else
      comp_str = comp_str + string[ind].to_s + count.to_s
    end
    ind += 1
  end
  comp_str
end
      
puts compress_str("wwwwaaadexxxxxxywww")
# output: w4a3dex6yw3

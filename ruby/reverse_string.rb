# DESCRIPTION => reverse a string without reverse methods 
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
# Way 1
def inverted_array(str)
  count = str.length-1
  new_str = []
  str.chars do |element|
    new_str << str[count]
    count -= 1
  end
  new_str.join("")
end

# Way 2
def inverted_string(string)
  str = string
  new_str = ''
  string.each_char{ new_str << str.slice!(-1) }
  new_str
end

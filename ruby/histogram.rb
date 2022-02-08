# DESCRIPTION
# Given a list of words, print out a histogram showing the frequency
# of words that begin with each letter in the alphabet. You can ignore case.
# The histogram should be normalized so that the longest line has 100 `*` characters.
# Print the results to stdout.
# The result should look similar to this:
#
# "A *******************************************************************"
# "B *******************************************"
# "C *******************************************************************************"
# "D *******************************************"
# "E **********************************"
# "F ***************************"
# "G ***************************"
# "H ***********************************"
# "I **********************************"
# "J ******"
# "K *********"
# "L ************************"
# "M **************************************************"
# "N **************************"
# "O *******************************"
# "P *************************************************************************************************"
# "Q ****"
# "R **************************************"
# "S ****************************************************************************************************"
# "T ***************************************************"
# "U ************************************************wr*****************"
# "V *************"
# "W ***************"
# "X *"
# "Y **"
# "Z ***"
#
#
# Author - Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github - @igoracportela
#
def words
 File.open('words.txt')
end
 
def challenge
 hash = {}
  words.each_with_index do |word, index|
   first_letter = word[0].to_s.upcase
 
   hash.key?(first_letter) ? hash[first_letter] += 1 : hash[first_letter] = 1
 end
 maximium = hash.values.max

 hash.map do |letter, count|
   normalize_value = ((count / maximium.to_f) * 100).to_i
   string_normalize = "*" * normalize_value
   puts "#{letter} #{string_normalize}"
 end
end
 
puts challenge

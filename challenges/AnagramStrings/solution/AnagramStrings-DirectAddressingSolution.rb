# Approach 2: assuming the character set is ASCII extended set
#             that would limit the characters 256 possible values
# Time complexity: O(n), where n is the number of characters in one of the strings
#                  back to back loops, each running n times
# Space complexity: O(n), where n is the number of characters in one of the strings
#                   hash table space in the worst case scenario
def string_anagrams(str1, str2)
  return false if str1 == nil || str2 == nil
  return false if str1.length != str2.length

  ascii_options = Array.new(256)
  256.times do |i|
    ascii_options[i] = 0
  end

  str1.length.times do |i|
    ascii_options[str1[i].ord] += 1
  end

  str2.length.times do |i|
    ascii_options[str2[i].ord] -= 1
    return false if ascii_options[str2[i].ord] < 0
  end

  return true
end

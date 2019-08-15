# Approach 3: using hash tables
# Time complexity: O(n), where n is the number of characters in one of the strings
#                  back to back loops, each running n times
# Space complexity: O(n), where n is the number of characters in one of the strings
#                   hash table space in the worst case scenario
def string_anagrams(str1, str2)
  return false if str1 == nil || str2 == nil
  return false if str1.length != str2.length

  Hash char_count = Hash.new()
  str1.length.times do |i|
    if !char_count[str1[i]]
      char_count[str1[i]] = 1 
    else
      char_count[str1[i]] += 1
    end
  end

  str2.length.times do |i|
    if !char_count[str2[i]] || char_count[str2[i]] == 0
      return false
    end
    char_count[str2[i]] -= 1
  end

  return true
end

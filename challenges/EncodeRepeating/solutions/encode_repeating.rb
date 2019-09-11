# A method that updates the string by replacing consecutive repeating characters
# with a number representing the frequency. The replacement is done only if the
# string length will get reduced by the process.
# Time complexity: O(n) where n is the number of characters in my_string
# - O(2n) to examine if consecutive character, update character count and update characters if needed
# - O(n-2) worst case to delete unneeded characters
# Overall, O(n) time.
# Space complexity: O(1) auxiliary storage used for indexing and keeping track of
# current character remains constant as my_string size changes.
def encode_repeating(my_string)
  # return if nil or empty
  return if (my_string == nil || my_string.length == 0)

  entering_index = 0 # this is where characters will get replaced
  examining_index = 0 # this is where the current character is getting examined and counted
  length = my_string.length
  while examining_index < length # all n characters will be examined
    temp = my_string[examining_index] # current character
    count = 1 # current character count
    while my_string[examining_index+1] == temp && examining_index < length
      examining_index += 1 # increment index
      count += 1 # increment current character count
    end
    # update at entering_index on seeing the subsequent character changing
    if count > 2 # enter the current character followed by it's count
      my_string[entering_index] = my_string[examining_index]
      entering_index += 1
      my_string[entering_index] = count.to_s
      entering_index += 1
    elsif count == 2 # enter the current character twice
      count.times do
        my_string[entering_index] = my_string[examining_index]
        entering_index += 1
      end
    else # count == 1, enter the current character once
      my_string[entering_index] = my_string[examining_index]
      entering_index += 1
    end
    examining_index += 1 # move to next character
  end

  # delete trailing characters in the string.
  count = length - entering_index
  count.times do # worst case: delete n-2 number of characters
    my_string.slice! entering_index # trim the string
  end
  return
end

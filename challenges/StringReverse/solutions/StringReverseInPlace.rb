# A method to reverse a string in place.
# Time complexity: O(n) where n is the length of the string.
#       The while loop will run n/2 times.
# Space complexity: O(1) i and j are auxiliary storages used.
#       Auxiliary storage takes constant space as input string size changes.
def string_reverse(my_string)
  # return if nil or empty
  return if my_string == nil || my_string.length == 0

  i = 0 # initialized to index of first character
  j = my_string.length - 1 # initialized to index of the last character
  while i < j
    temp = my_string[i] # swap using temporary variable
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return # reversal is done in place and hence no new object is returned
end

# Helper method to reverse a word.
# Characters between start_index to end_index (both
# inclusive) form a word.
# Reverses the characters from start_index to end_index.
def partial_reverse(my_string, start_index, end_index)
  i = start_index
  j = end_index
  while i < j
    temp = my_string[i] # swap using temporary variable
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return
end

# A method to reverse each word in a sentence, in place.
# Time complexity: O(n), where n is the length of the input string, my_words
# - Each character in my_words gets scanned once to find the beginning and end of
# a word. To deduce the beginning and end of a word, the characters are compared 
# to the white space, and character count is tracked. This takes O(n) time.
# - Once the beginning and end for a word is deduced, partial_reverse is called.
# partial_reverse reverses each word and takes O(k) time if there are k characters
# in the word. At the most n characters will get reversed. So, this takes O(n) time.
# - Overall, each character gets visited twice, taking O(2n) time or O(n) time.
# Space complexity: O(1) - the auxiliary storage size does not increase as the
# input length increases.
def reverse_words(my_words)
  return if (my_words == nil || my_words.length == 0)

  i = 0
  length = my_words.length
  while i < length # until end of input
    while my_words[i] == ' ' && i < length # accounting for preceeding spaces
      i += 1
    end
    start_index = i # start of word identified

    while my_words[i] != ' ' && i < length # looking for end of word
      i += 1
    end
    end_index = i - 1 # word ends before the white space or at length-1

    partial_reverse(my_words, start_index, end_index) # reverse the word
  end

  return 
  # since the string manipulation is done in-place,
  # there's no need to return the string
end

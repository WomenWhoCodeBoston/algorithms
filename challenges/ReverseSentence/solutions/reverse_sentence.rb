# Helper method for partial string reversal
# Reverses the character from start_index to end_index
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

# Helper method: A method to reverse each word in a sentence, in place.
# Time complexity: O(n) where n is the length of my_words
# - Each character in my_words gets scanned once to find the beginning and end of
# a word. For this, the characters are compared to the white space, and character
# count is tracked. This takes O(n) time.
# - Once the beginning and end for a word is deduced, partial_reverse is called.
# partial_reverse reverses each word and takes O(k) time if there are k characters
# in the word. At the most n characters will get reversed. So, this takes O(n) time.
# - Overall, each character gets visited twice, taking O(2n) time or O(n) time.
# Space complexity: O(1) - the auxiliary storage size does not increase as the
# input length increases.
def reverse_words(my_words)
  # return if nil or empty
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
end

# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the number of characters in my_sentence
# - O(n) time to reverse all characters in the sentence. ("Let's go" becomes "og s'teL")
# - O(2n) time to reverse words in the sentence. ("og s'teL" becomes "go Let's")
# - Overall, O(3n) or simplified to O(n)
# Space complexity: O(1) - auxiliary storage used does not depend on input
def reverse_sentence(my_sentence)
  # return if nil or empty
  return if (my_sentence == nil || my_sentence.length == 0)
  start_index = 0
  end_index = my_sentence.length - 1
  # reverse all characters in my_sentence
  partial_reverse(my_sentence, start_index, end_index)

  # reverse each word in my_sentence
  reverse_words(my_sentence)
end

# sort the characters in a string in-place
# uses merge sort
def sort(str)
  temp = str.dup
  mergesort(str, temp, 0, str.length-1) # invoke recursive merge sort
end

def mergesort(str, temp, low, high)
  return if low >= high

  mid = (low + high) / 2
  mergesort(str, temp, low, mid)
  mergesort(str, temp, mid+1, high)
  merge(low, mid, high, str, temp)
end

def merge(low, mid, high, str, temp)
  h = low
  i = low
  j = mid + 1

  while h <= mid && j <= high
    if str[h] <= str[j]
      temp[i] = str[h]
      h += 1
    else
      temp[i] = str[j]
      j += 1
    end
    i += 1
  end

  if h > mid
    k = j
    while k <= high
      temp[i] = str[k]
      i += 1
      k += 1
    end
  else
    k = h
    while k <= mid
      temp[i] = str[k]
      i += 1
      k += 1
    end
  end

  k = low
  while k <= high
    str[k] = temp[k]
    k += 1
  end
end


# A method to check if the two input strings are anagrams of each other
# Returns true if the two input strings are anagrams of each other.
# Returns false otherwise.

# Approach 1: Sort, then compare
# Time complexity: O(n log n) where n is the number of characters in any one of the input string
# Space complexity: O(n) where n is the number of characters in any one of the input string
#                   merge sort uses an additional space of the same size as the input.
def string_anagrams(str1, str2)
  return false if str1 == nil || str2 == nil
  return false if str1.length != str2.length

  # sort the two strings
  sort(str1)
  sort(str2)
  # O(n log n) time complexity, where n is the number of characters

  str1.length.times do |i|
    return false if str1[i] != str2[i]
  end # O(n) time complexity, where n is the number of characters
  
  return true
end

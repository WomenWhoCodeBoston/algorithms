# Approach 2: Using sorting approach
# Helper method needed for the sorting approach below to find intersection
def binary_search(array, value_to_find)
  return false if array.length == 0
  low = 0
  high = array.length-1
  while low < high
    mid = (high+low)/2
    if array[mid] == value_to_find
      return true
    elsif array[mid] > value_to_find
      high = mid-1
    elsif array[mid] < value_to_find
      low = mid+1
    end
  end

  return true if array[low] == value_to_find

  return false
end

# Leveraging sorting approach
# Time complexity: O(m log m) + O(n log m) where array1 has m elements and array2 has n elements
# Space complexity: O(n) if n < m since common_elements array gets created and
#                   returned and at the most all elements will match.
# Note: this approach has better time complexity than approach 1 (brute force)
def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil
  if array1.length < array2.length
    array2.sort! # O(m log m) time
    larger = array2
    smaller = array1
  else
    array1.sort! # O(m log m) time
    larger = array1
    smaller = array2
  end
  common_elements = []
  smaller.each do |number1|
    # runs n times
    if binary_search(larger, number1)
      # takes log m time
      common_elements << number1
    end
  end # overall: O(n log m)
  return common_elements
end

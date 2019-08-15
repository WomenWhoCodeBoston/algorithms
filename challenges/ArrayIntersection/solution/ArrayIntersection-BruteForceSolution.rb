# Approach 1: brute force
# Creates a new array to return the intersection of the two input arrays
# Brute force approach
# Time complexity: O(m*n) where array1 has m elements and array2 has n elements
# Space complexity: O(n) if n < m since common_elements array gets created and
#                   returned and at the most all elements will match.
def intersection(array1, array2)
  common_elements = []
  return common_elements if array1 == nil || array2 == nil

  array1.each do |number1|
    array2.each do |number2|
      if number1 == number2
        common_elements << number1
        break
      end
    end
  end

  return common_elements
end

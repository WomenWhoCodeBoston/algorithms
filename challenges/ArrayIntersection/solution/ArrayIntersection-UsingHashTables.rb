# Approach 3: Using hash tables
# Time complexity: O(n+m) where array1 has m elements and array2 has n elements
# Space complexity: O(n) if n < m since common_elements array gets created, as well
#                   at the most n elements will get added to the hash table.
def intersection(array1, array2)
  return [] if array1 == nil || array2 == nil
  
  if array1.length < array2.length
    larger = array2
    smaller = array1
  else
    larger = array1
    smaller = array2
  end

  my_hash = Hash.new()
  smaller.each do |num|
    my_hash[num] = 1
  end # O(n) space and O(n) time
  
  common_elements = []
  larger.each do |num_1|
    # runs m times
    if my_hash.include? num_1
      # takes O(1) time
      common_elements << num_1
    end
  end

  # overall: O(n+m) time
  # overall: O(n) space
  return common_elements
end

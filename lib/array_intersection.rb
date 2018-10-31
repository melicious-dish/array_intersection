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

# # Approach 2: Using sorting approach
# # Helper method needed for the sorting approach below to find intersection
# def binary_search(array, value_to_find)
#   return false if array.length == 0
#   low = 0
#   high = array.length-1
#   while low < high
#     mid = (high+low)/2
#     if array[mid] == value_to_find
#       return true
#     elsif array[mid] > value_to_find
#       high = mid-1
#     elsif array[mid] < value_to_find
#       low = mid+1
#     end
#   end
#
#   return true if array[low] == value_to_find
#   return false
# end
#
# # Leveraging sorting approach
# # Time complexity: O(m log m) + O(n log m) where array1 has m elements and array2 has n elements
# # Space complexity: O(n) if n < m since common_elements array gets created and
# #                   returned and at the most all elements will match.
# # Note: this approach has better time complexity than approach 1 (brute force)
# def intersection(array1, array2)
#   return [] if array1 == nil || array2 == nil
#   if array1.length < array2.length
#     array2.sort! # O(m log m) time
#     larger = array2
#     smaller = array1
#   else
#     array1.sort! # O(m log m) time
#     larger = array1
#     smaller = array2
#   end
#
#   common_elements = []
#   smaller.each do |number1|
#     # runs n times
#     if binary_search(larger, number1)
#       # takes log m time
#       common_elements << number1
#     end
#   end # overall: O(n log m)
#
#   return common_elements
# end

# # Approach 3: Using hash tables
# # Time complexity: O(n+m) where array1 has m elements and array2 has n elements
# # Space complexity: O(n) if n < m since common_elements array gets created, as well
# #                   at the most n elements will get added to the hash table.
# def intersection(array1, array2)
#   return [] if array1 == nil || array2 == nil
#   if array1.length < array2.length
#     larger = array2
#     smaller = array1
#   else
#     larger = array1
#     smaller = array2
#   end
#   my_hash = Hash.new()
#   smaller.each do |num|
#     my_hash[num] = 1
#   end # O(n) space and O(n) time
#   common_elements = []
#   larger.each do |num_1|
#     # runs m times
#     if my_hash.include? num_1
#       # takes O(1) time
#       common_elements << num_1
#     end
#   end
#   # overall: O(n+m) time
#   # overall: O(n) space
#   return common_elements
# end

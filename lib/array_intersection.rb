# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)


  expected_intersection = []
  if array1 == nil || array2 == nil
    return expected_intersection
  end

  array1.each do |ele|
    array2.each do |ele2|
      if ele == ele2
        expected_intersection << ele
      end
    end
  end

  return expected_intersection
end


# time complexity is O n2 - nested loops
# space complexity is On where n is the length of the longest array

def map(source_array)
  temp_array = []
  
  source_array.each do |element|
    temp_array << yield(element)
  end
  
  return temp_array
end

def reduce(source_array, starting_point = 0)
  
  source_array.each do |element|
    if yield(starting_point, element) == true
      return true
    elsif !yield(starting_point, element)
      return false
    end
  end
  
  return starting_point
end

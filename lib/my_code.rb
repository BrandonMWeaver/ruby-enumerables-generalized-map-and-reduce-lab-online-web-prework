def map(source_array)
  temp_array = []
  
  source_array.each do |element|
    temp_array << yield(element)
  end
  
  return temp_array
end

def reduce(source_array, starting_point = 0)
  
  source_array.each do |element|
    starting_point = yield(starting_point, element)
    if starting_point == true
      return true
    end
  end
  
  return starting_point
end

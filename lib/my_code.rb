def map(source_array)
  temp_array = []
  
  source_array.each do |element|
    temp_array << yield(element)
  end
  
  return temp_array
end

def reduce(source_array, starting_point = 0)
  
  value = source_array.each do |element|
    yield(starting_point, element)
  end
  
  return value
end

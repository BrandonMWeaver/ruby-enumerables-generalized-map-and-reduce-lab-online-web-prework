def map(source_array)
  temp_array = []
  
  source_array.each do |element|
    temp_array << yield(element)
  end
  
  return temp_array
end

def reduce(source_array, starting_point = 0)
  true_or_false = false
  
  source_array.each do |element|
    if element == true || element == false
      true_or_false = yield(starting_point, element)
    else
    starting_point = yield(starting_point, element)
    end
  end
  
  return starting_point
end

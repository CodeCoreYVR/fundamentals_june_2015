array = [[1,2,3], [1,2,3], [1,2,3], [1,2,3]]

# Method 1
# Nested loop approach
array.each do |element|
  # element here will be an Array, for instanece [1,2,3]
  element.each do |number|
    puts number * number
  end
end

# Method 2
# Flattening an array will make it a one dimensional array
# so we can loop through it once
array.flatten!

array.each do |element|
  result = element * element
  puts result
end

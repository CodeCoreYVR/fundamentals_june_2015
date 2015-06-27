# (1..10).to_a will generate an array from 1 to 10 inclusive
my_array = (1..10).to_a

# this will iterate through every element of the array and will apply
# the block of code below on every element.
my_array.each do |element|
  powered = element ** 2
  puts powered
end

def largest(*numbers)
  numbers.flatten.max
end

# puts largest 5,4,3,2,2
# puts largest 123, 4,3,54,6,3

print "give me a list of numbers"
# split will convert the user input from string to Array
# for instance if the user enters "1 23 15" we will get
# ["1", "23", "15"]
# we then call the map method to convert each element into an integer
# so the array will look like: [1, 23, 15]
numbers = gets.chomp.split.map {|num| num.to_i }
print numbers
print largest(numbers)

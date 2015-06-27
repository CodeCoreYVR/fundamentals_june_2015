def multiply(a, b)
  a * b
end

puts multiply(3,4)
puts multiply 5,6

def addition(a, b)
  a + b
end

puts addition 1, 1
puts addition(5,6)

def greeting(name)
  "Hello #{name}"
end

puts greeting("CodeCore")

def sum(a, b = 0)
  a + b
end

puts sum(2,3)
puts sum(5)


def capitalize_each_word(sentence)
  array = sentence.split
  array.map! {|word| word.capitalize }
  array.join(" ")
end

def print_10
  for number in 1..10
    # this will break the loop as well
    return if number == 3
    puts number
  end
end

print_10

def power_it(a, b)
  a ** b
end

puts power_it(2,3)

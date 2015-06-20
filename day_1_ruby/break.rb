x = 1

while x < 10
  puts x
  if x == 3
    # this will stop the loop (ends it)
    # regardless of whether the original condition is still
    # met or not
    break
  end
  x += 1
end

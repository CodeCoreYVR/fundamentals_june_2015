def greeting(*names)
  names.each do |name|
    puts "Hello #{name}"
  end
end

greeting
greeting "tam"
greeting "sam", "alex", "john"

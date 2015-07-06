load "./cookie.rb"

# this creates a class Oreo for us that inherits from the Cookie class
# Oreo is called the subclass or child class
# Cookie is called the superclass or parent class
# in Ruby a class can only inherit for one other class
class Oreo < Cookie
  attr_accessor :filling_type

  # this overrides (redefine) the details method that came from the Cookie class
  # it won't affect the method for the Cookie class itself, just for the Oreo class
  def details
    puts "This is an Oreo Cookie with #{sugar_amount}g of sugar
          ,  #{@flour_amount}g of flour and #{filling_type} filling type"
  end
end

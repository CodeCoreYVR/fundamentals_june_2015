class Cookie

  # this method gets called when you instantiate a new object: Cookie.new
  def initialize(sugar_amount, flour_amount)
    # defining a variable with an @ sign before it makes it an instance variable
    # accessible anywhere within public or private instance methods in this
    # class. Every object will have it's own set of these variable.
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    puts "creating the cookie object"
  end

  attr_reader :sugar_amount
  # is equivalent to
  # this method is generally called GETTER method
  def sugar_amount
    @sugar_amount
  end

  attr_writer :sugar_amount
  # Defining a method with a = sign at the end if its name makes it possible to
  # call the method with an equal sign. For instance I can do:
  # c = Cookie.new(1,2)
  # c.sugar_amount = 5
  # this method is generall called SETTER method
  def sugar_amount=(new_amount)
    @sugar_amount = new_amount
  end

  attr_accessor :flour_amount
  # this is equivalent to:
  # attr_reader :flour_amount
  # attr_writer :flour_amount`

  def details
    puts "This cookie has #{@sugar_amount}g of sugar and #{@flour_amount}g of flour"
  end

  # this is a class method that you call directly on the class and not on an
  # object of the class. So you call it:
  # Cookie.info
  def self.info
    puts "I'm a cookie class"
  end

  def bake_and_eat
    # this variable is a local variable the scope of it is this method onlyx
    # a = 1
    bake # I'm able to call this private method because it's within this class
    eat
  end

  # we call this method an instnace method (or object method)
  # because we call it on the objects created from this class
  # this is also considered a public method
  def eat
    # this will give an error because a isn't defined in the eat method
    # puts a
    puts "Yummy!"
  end

  # All the methods defined after this `private` keyword are
  # private methods
  # Private method can't be called from outside this class definition
  private

  def bake
    puts "Baking the cookie.."
  end

end

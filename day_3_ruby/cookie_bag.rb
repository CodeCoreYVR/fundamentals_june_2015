class CookieBag

  def initialize
    # we insantiate an empty array that can contain any type of object
    # we expect to fill this array with Cookie objects
    @bag = []
  end

  def add_to_bag(cookie)
    # we add a cookie to the bag by pushing the cookie object to the
    # array of cookie
    @bag << cookie
  end

  def remove_from_bag
    # we remove a cookie from the bag by popping an element from the array
    # of cookies
    @bag.pop
  end

  def details
    puts "This is a cookie bag with #{@bag.count} cookies"
  end

end

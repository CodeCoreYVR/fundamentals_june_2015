class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def catch(bird)
    # rand(100) will generate a random number between 0 and 99.
    # This makes it catch the bird 50% of the times
    if rand(100) >= 50
      @caught_bird = bird
      puts "Bird caught"
    else
      puts "Bird Missed"
    end
  end

  def eat
    if @caught_bird
      puts "Eating the bird: #{@caught_bird.name}"
      @caught_bird = nil
    else
      puts "Don't have a bird to eat"
    end
  end

end

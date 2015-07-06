class Car

  def initialize(model, type, capacity)
    # @model, @type, @capacity = model, type, capacity
    @model    = model
    @type     = type
    @capacity = capacity
  end

  def self.max_speed
    200
  end

  def drive
    ignite_engine
    puts "Vroom..."
  end

  def stop
    puts "errrrh"
  end

  def park
    puts "crunch...."
  end

  private

  def pump_gas
    puts "jug jug.."
  end

  def ignite_engine
    puts "some sound..."
  end

end

class Bike
  attr_accessor :bike_working
  def initialize
    @bike_working = true
  end

  def working?
    @bike_working
  end
end
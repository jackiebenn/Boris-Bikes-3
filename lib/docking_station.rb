class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike, is_broken = false)
    fail 'Docking station full' if full?
    report_broken(bike) if is_broken
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  private 

  attr_reader :bikes

  def report_broken(bike)
    bike.bike_working = false  
  end

   def full?
    bikes.length >= capacity
   end

   def empty? 
    bikes.empty?
   end
  end


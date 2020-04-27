class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  # CarOwner.all Get a list of all owners
  def self.all
    @@all
  end

# CarOwner#cars Get a list of all the cars that a specific owner has
  def cars
      Car.all.select { |car| car.car_owner == self }
  end

# CarOwner#mechanics Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map { |car| car.mechanic }
  end

# CarOwner.average_number_of_cars Get the average amount of cars owned for all owners
  def self.average_number_of_cars
    totals = @@all.map { |owner| owner.cars.count }
    totals.sum / totals.length
  end

end

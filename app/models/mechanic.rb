class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    Mechanic.all << self
  end

  # Mechanic.all Get a list of all mechanics
  def self.all
    @@all
  end

# Mechanic#cars Get a list of all cars that a mechanic services
  def cars
    Car.all.select { |car| car.mechanic == self }
  end

# Mechanic#car_owners Get a list of all the car owners that go to a specific mechanic
  def car_owners
    cars.map { |cars| cars.car_owner }
  end

# Mechanic#car_owners_names Get a list of the names of all car owners who go to a specific mechanic
  def car_owners_names
    car_owners.map { |owner| owner.name }
  end

end

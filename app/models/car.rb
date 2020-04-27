class Car

  attr_reader :make, :model, :classification
  attr_accessor :car_owner, :mechanic

  @@all = []
  @@classifications = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@classifications << @classification
    Car.all << self
  end

  # Car.all Get a list of all cars
  def self.all
    @@all
  end

# Car.classifications Get a list of all car classifications
  def self.classifications
    @@classifications
  end

# Car.find_mechanics(classification) Get a list of mechanics that have an expertise that matches the passed in car classification
  def self.find_mechanics(classification)
    Mechanic.all.select { |mechanics| mechanics.specialty == classification }
  end

end

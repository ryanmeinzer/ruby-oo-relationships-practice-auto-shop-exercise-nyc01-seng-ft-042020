require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# make CarOwner/s
car_owner1 = CarOwner.new("Alisha")
car_owner2 = CarOwner.new("Kurt")
car_owner3 = CarOwner.new("Ryan")

# Make Mechanic/s
mechanic1 = Mechanic.new("Harry", "Muscle Sports Car")
mechanic2 = Mechanic.new("Jim", "Super Sports Car")
mechanic3 = Mechanic.new("Mike", "Pretty Sports Car")

# make Car/s
car1 = Car.new("Ford", "Mustang", "Muscle Sports Car", car_owner1, mechanic1)
car2 = Car.new("Porsche", "911 Turbo", "Super Sports Car", car_owner2, mechanic2)
car3 = Car.new("Nissan", "300 ZX", "Pretty Sports Car", car_owner3, mechanic3)

binding.pry

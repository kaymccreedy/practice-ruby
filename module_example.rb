module ControlVehicle

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
  
end

class Vehicle

  include ControlVehicle

  attr_reader :speed, :direction, :make
  
  def initialize(info)
    @speed = 0
    @direction = 'north'
    @make = info[:make]
  end

end

class Car < Vehicle

  attr_reader :model, :fuel

  def initialize(info)
    super
    @model = info[:model]
    @fuel = info[:fuel]
  end
  
  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle

  attr_reader :type, :weight

  def initialize(info)
    super
    @model = info[:type]
    @weight = info[:weight]
  end
  
  def ring_bell
    puts "Ring ring!"
  end

end

car1 = Car.new( make: "Ford", model: "Focus", fuel: "gasoline" )
bike1 = Bike.new(  make: "Trek", type: "road", weight: 25 )

pp car1
pp bike1

car1.accelerate
bike1.accelerate

puts car1.speed
puts bike1.speed

car1.honk_horn
bike1.ring_bell
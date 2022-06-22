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

  attr_reader :speed, :direction
  
  def initialize
    @speed = 0
    @direction = 'north'
  end

end

class Car < Vehicle
  
  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end

end

car1 = Car.new
bike1 = Bike.new

pp car1
pp bike1

car1.accelerate
bike1.accelerate

puts car1.speed
puts bike1.speed

car1.honk_horn
bike1.ring_bell
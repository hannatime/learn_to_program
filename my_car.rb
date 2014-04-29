# my_car.rb
module Drivable
  def drive
    "I'm Driving."
  end
end

module Washable
  def wash
    "I'm Washing."
  end
end

module Loadable
  def load
    "I'm loading."
   end
  def can_load?(kgs)
  kgs < 2000 ? true : false
	end
end


class Vehicle
	@@number_of_vehicles = 0
attr_accessor :color
	attr_reader :year

  
	
	def self.mileage(gallons, miles)
		mileage = miles / gallons
		puts "Mileage is #{mileage}mpg"
	end

  def spray_paint(c)
  	@color = c
  	puts "You new #{color} paint job looks great!"
  end

 	def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
	def to_s
    "This cars model is a #{@model}, it is a #{@year} and it is #{@color} in colour."
  end

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar <Vehicle
	@@number_of_cars = 0	
	NUMBER_OF_DOORS = 4

	def initialize(y, c, m)
		@@number_of_cars += 1
		@@number_of_vehicles += 1
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

   def self.total_number_of_cars
    @@number_of_cars
  end

end

class MyTruck <Vehicle
	include Loadable
	@@number_of_trucks = 0
	NUMBER_OF_DOORS = 2

	def initialize(y, c, m)
		@@number_of_trucks += 1
		@@number_of_vehicles += 1
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def self.total_number_of_trucks
    @@number_of_trucks
  end
end

porsche = MyCar.new("1990", "Black", "911")
porsche.speed_up(20)
porsche.current_speed
porsche.speed_up(20)
porsche.current_speed
porsche.brake(20)
porsche.current_speed
porsche.brake(20)
porsche.current_speed
porsche.shut_down
porsche.current_speed
puts porsche.color

porsche.color = 'Pink'
puts porsche.color

porsche.spray_paint('Blue')
p porsche
puts "---porsche to_s Example 1 ---"
puts porsche.to_s
puts "---porsche to_s Example 2---"
puts "#{porsche}"
puts "---MyCar Mileage Example ---"
puts MyCar.mileage(10, 200)
puts "---MyCar Module Example ---"
puts "---MyCar method lookup---"
puts MyTruck.ancestors


kenworth = MyTruck.new("2000", "white", "rebel")
kenworth.speed_up(20)
kenworth.current_speed
kenworth.speed_up(20)
kenworth.current_speed
kenworth.brake(20)
kenworth.current_speed
kenworth.brake(20)
kenworth.current_speed
kenworth.shut_down
kenworth.current_speed
puts kenworth.color

puts MyCar.total_number_of_cars
puts MyTruck.total_number_of_trucks
puts Vehicle.total_number_of_vehicles
puts kenworth.can_load?(3000)

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

puts porsche.age
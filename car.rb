# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.


class Vehicle
  def set_car_name(car)
    @my_vehicle = car
  end

  def get_car_name
    @my_vehicle
  end
end #ends class

a_car = Vehicle.new()
a_car.set_car_name("Audi R8")

# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.

class Car
  def set_car_make(make)
    @my_vehicle = make
  end

  def get_car_make
    @my_vehicle
  end
end #ends class

a_car = Car.new()
a_car.set_car_make("Audi")

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.


class Car
  def initialize
    @num_wheels = 4
  end

  def num_wheels
    @num_wheels
  end

  def set_car_make(make) #This had to be included from our previous class definiton, since we wanted this to show up when we created an instance of this class.
    @my_vehicle = make
  end

  def get_car_make #Also had to include this.
    @my_vehicle
  end
end



# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.

my_tesla = Car.new()
my_tesla.set_car_make("Tesla")


Story: As a programmer, I can make a Tata car.

my_tata = Car.new()
my_tata.set_car_make("Tata")

my_toyo = Car.new()
my_toyo.set_car_make("Toyota")

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.

class Car
  def initialize year #Added year parameter here
    @num_wheels = 4
    @year = year #When creating a new instance of Car, the year must be specified, or else an error will return
  end

  def num_wheels
    @num_wheels
  end

  def set_car_make(make) #This had to be included from our previous class definiton, since we wanted this to show up when we created an instance of this class.
    @my_vehicle = make
  end

  def get_car_make #Also had to include this.
    @my_vehicle
  end
end

# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?



class Car
  def initialize year #Added year parameter here
    @num_wheels = 4
    @year = year #When creating a new instance of Car, the year must be specified, or else an error will return
    @lights = "off" #This turns light on by default when class is instanced
  end

  def num_wheels
    @num_wheels
  end

  def set_car_make(make) #This had to be included from our previous class definiton, since we wanted this to show up when we created an instance of this class.
    @my_vehicle = make
  end

  def get_car_make #Also had to include this.
    @my_vehicle
  end

  def turn_on_lights
    @lights = "on"
  end
end

# Story: As a programmer, I can signal left and right. Turn signals starts off.


class Car
  def initialize year #Added year parameter here
    @num_wheels = 4
    @year = year #When creating a new instance of Car, the year must be specified, or else an error will return
    @lights = "off" #This turns light on by default when class is instanced
    @sig_left = "off" #This initialzes the turn signals to off
    @sig_right = "off"
  end

  def num_wheels
    @num_wheels
  end

  def set_car_make(make) #This had to be included from our previous class definiton, since we wanted this to show up when we created an instance of this class.
    @my_vehicle = make
  end

  def get_car_make #Also had to include this.
    @my_vehicle
  end

  def lights_on
    @lights = "on"
  end

  def lights_off #Added this back in, so that you can turn the lights back off
    @lights = "off"
  end

  def signal_left
    @sig_left = "on"
  end

  def signal_right
    @sig_right = "on"
  end
end
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
########################################``##########################''##########################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
# Story: As a programmer, I can slow my Teslas down by 7 per braking.
# car_speed = 30
class Car
  def initialize year #Added year parameter here
    @num_wheels = 4
    @year = year #When creating a new instance of Car, the year must be specified, or else an error will return
    @lights = "off" #This turns light on by default when class is instanced
    @sig_left = "off" #This initialzes the turn signals to off
    @sig_right = "off"
    @speed = 0
  end

  def get_info
    puts "This car is a #{@year} model. The lights are currently #{@lights}. The left signal is #{@sig_left} and the right signals is #{@sig_right}. This car is going #{@speed} miles per hour."
  end

  def get_year
    @year
  end

  def num_wheels
    @num_wheels
  end

  def set_car_model(model)
    @my_vehicle = model
  end

  def get_car_model
    @my_vehicle
  end

  def lights_on
    @lights = "on"
  end

  def lights_off
    @lights = "off"
  end

  def signal_left
    @sig_left = "on"
  end

  def signal_right
    @sig_right = "on"
  end

  def find_speed
    @speed
  end


end

class Tesla < Car
  def initialize year
    super
  end

  @power = "electric"
  def accel
    @speed = @speed + 10
  end

  def brake
    if @speed >= 7
      @speed = @speed - 7
    else
     @speed = @speed - @speed
    end
  end
end

class Tata < Car

  def initialize year
    super
  end

  @power = "gas"
  def accel
    @speed = @speed + 2
  end

  def brake
    if @speed >= 1.5
      @speed = @speed - 1.5
    else
     @speed = @speed - @speed
    end
  end
end

#
# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.

class Toyota < Car

  def initialize year
    super
  end

  @power = "gas"
  def accel
    @speed = @speed + 7
  end

  def brake
    if @speed >= 5
      @speed = @speed - 5
    else
     @speed = @speed - @speed
    end
  end
end


# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.

# Story: As a programmer, I can sort my collection of cars based on model year.

# coll = [Toyota.new(2019), Toyota.new(2018), Tata.new(2017), Tata.new(2016), Tesla.new(2015), Tesla.new(2014)]
# Story: As a programmer, I can sort my collection of cars based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.


amy_car = Toyota.new(2019)
joe_car = Tesla.new(2007)
jez_car = Tata.new(2020)
amy_car2 = Tesla.new(1890)

coll3 = [amy_car, joe_car, jez_car, amy_car2]

coll3.sort_by { |a| a.get_year } #this is a function that says take all element "a"s and sort by year
coll3.sort_by { |b| b.class.to_s } #this is a function that says take all element "b's" and sort by class (used the RUby class so needed to make it a string not entire class object)
coll3.sort_by { |c| [c.class.to_s, c.get_year] }

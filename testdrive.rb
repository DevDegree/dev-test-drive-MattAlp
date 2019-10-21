class Vehicle

    attr_accessor :odometer, :gas_used
  
    def mileage
      @odometer / @gas_used
    end
  
    def accelerate
      puts "Floor it!"
    end
  
    def sound_horn
      puts "Beep! Beep!"
    end
  
    def steer
      puts "Turn front 2 wheels."
    end
  
  end
  
  class Car < Vehicle
  end
  
  class Motorcycle < Vehicle
  
    def steer
      puts "Turn front wheel."
    end
  end
  
  class Truck < Vehicle 
  
    attr_accessor :cargo
  
    def load_bed(contents)
      puts "Securing #{contents} in the truck bed."
      @cargo = contents
    end
  
  end
  
  
  truck = Truck.new
  truck.load_bed("A lot of Doritos")
  puts "The truck is carrying #{truck.cargo}."
  
  car = Car.new
  car.odometer = 2019
  car.gas_used = 404
  
  puts "Lifetime MPG:"
  puts car.mileage
  
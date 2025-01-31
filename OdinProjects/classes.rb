class MyCar
  attr_accessor :speed
  attr_reader :year, :colour, :make

  MILEAGE = 7

  def initialize(year, colour, make)
    @year = year
    @colour = colour
    @make = make
    @speed = 0
  end

  def speed_up(speed)
    self.speed += speed
  end

  def slow_down(speed)
    self.speed -= speed
    self.speed = 0 unless self.speed > 0
  end

  def shut_off
    self.speed = 0
  end

  def car_info
    puts "The car was made in #{year}, it is #{colour}, and it is a #{make}!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "The car was made in #{year}, it is #{colour}, and it is a #{make}!"
  end
end

car = MyCar.new(2013, 'white', 'seat')
puts car
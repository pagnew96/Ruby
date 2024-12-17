class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    'Hello!'
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

# sparky = GoodDog.new
# paws = Cat.new
#
# puts sparky.speak           # => Hello!
# puts paws.speak             # => Hello!

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

bad_dog = BadDog.new(2, 'bear') # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">
p bad_dog

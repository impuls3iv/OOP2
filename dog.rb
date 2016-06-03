class Animal

  attr_accessor :name
  #
  # def initialize(name)
  #   @name = name
  # end

  def eat
    puts "#{@name} is eating"
  end

end

class Dog < Animal

  attr_accessor :breed #use instead of initializer when inheriting so you dont have 2 initializer

  def bark
      puts "#{name} is barking"
  end

  #even though there is another eat method, it wont cause an error, because ruby takes most specific
  #and override the Animal -> eat method
  def eat
    super #it will run superclass first, so it will put the eat method twice
    puts "#{@name} is eating"
  end

  # def breed
  #   puts "#{name} is a #{breed}"
  # end

end

sparky = Dog.new
spary.name = "Sparky"
sparky.breed = "Labradoodle"
sparky.eat

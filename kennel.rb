require_relative'dog'

class Kennel

  @@counter = 0 #class variable
  #state can be has dog or no dog
  attr_reader :dogs

  def initialize
    @dogs =[] #create an array to hold each dog
  end

  def add(dog) #how we add to the @dogs array-> we add instance of the class
    if dog.is_a?(Dog)
      @dogs << dog
    else
      raise "sorry you need to add a Dog instance"
    end
  end

end


sparky = Dog.new("Sparky", "Shepherd")
sparky.bark

kennel1 = Kennel.new
kennel1.add(sparky)
puts kennel1.dogs.inspect

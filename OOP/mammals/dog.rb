require_relative '../animal'
require_relative '../animal-types/mammals'


class Dog < Animal
  #include modules and classes in this instance
  include Mammals

  def speak
    super()
    puts 'WOF WOF WOF'
  end

  def alive
    super()
    puts 'I am alive'
  end

  def number_of_legs
    Quadraped.legs
  end

end

rotweiller = Dog.new

rotweiller.speak
rotweiller.number_of_legs

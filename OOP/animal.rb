require_relative './living_organism'


class Animal < LivingOrganism

  def alive
    puts 'blablabla'
  end

  def traits
    puts 'Animals can breathe, eat, drink, speak and procreate'
  end

  def breather
    puts 'Animal can breathe'

  end

  def procreate
    puts 'Animal can procreate'

  end

  def eat
    puts 'Animal can eat'

  end

  def drink
    puts 'Animal can drink'

  end

  def speak
    puts 'Animal can speak'

  end

end


# dog = Animal.new
#
# dog.alive
# dog.dead
# dog.traits
# dog.breather
# dog.procreate
# dog.eat
# dog.drink
# dog.speak

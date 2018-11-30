require 'faker'
story = [Faker::Superhero.name,' drives a ', Faker::Vehicle.make_and_model, ' and works as a ', Faker::Company.industry, ' at ', Faker::Company.name, '. He also has a cat named ', Faker::Cat.name ]
puts story.join

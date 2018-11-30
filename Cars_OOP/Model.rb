require_relative './Make.rb'


class Model < Make

  def m3
    puts 'model is a M3 and its very fast'
  end

  def x6
    puts 'and very luxury'
  end

end

jon = Model.new

jon.bmw
jon.m3
jon.sports

bob = Model.new

bob.bmw
bob.x6
bob.suv



class Fibonacci

  attr_accessor :fib_array, :even_fib_number

  def initialize
    @fib_array = [1, 2, 3]
    @even_fib_number = []
  end

  # create the fibonacci sequence
  # this should create valid array inside @fib_array
  def fib_creator(fib_max)
    @fib_array << (@fib_array[-1] + @fib_array[-2]) while @fib_array.length < fib_max
  end

  def fib_sum
    @fib_array.sum
  end

  # get the sum of the even fibonacci numbers

  def even_number_total_value
    @fib_array.each do |i|
      even_fib_number << i if (i % 2).zero?
    end
    even_fib_number.sum
  end

end

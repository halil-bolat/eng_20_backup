

describe 'project euler problem two' do

  before(:each) do
    @fibonacci = Fibonacci.new
  end

  it "should contain array of [1,2,3]" do
    expect(@fibonacci.fib_array).to match([1,2,3])
  end

  it "should respond with total of 231 for first 10 terms of fibonacci" do
    @fibonacci.fib_creator(10)
    expect(@fibonacci.fib_sum).to eq 231
  end

  it "should respond 44 for the sum of all even numbers from a fibonacci max of 10" do
    @fibonacci.fib_creator(10)
    expect(@fibonacci.even_number_total_value).to eq 44
  end

end

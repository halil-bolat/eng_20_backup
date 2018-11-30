require 'httparty'
require 'json'


class Postcodeio

  include HTTParty

  attr_accessor :single_postcode_result, :multiple_postcode_results, :multiple_postcode_array

  base_uri 'https://api.postcodes.io'

  def initialize
    @multiple_postcode_array = [
      "OX49 5NU",
      "M32 0JG",
      "NE30 1DP"
    ]
  end

  def get_single_postcode(postcode)
    @single_postcode_result = self.class.get("/postcodes/#{postcode}")
    puts JSON.parse(@single_postcode_result.body)
    # puts @single_postcode_result.body
  end

  def post_multiple_postcodes(postcodes)
    @multiple_postcode_results = self.class.post("/postcodes/", :body => {"postcodes":postcodes})
    puts JSON.parse(@multiple_postcode_results.body)
    # puts @single_postcode_result.body
  end


end

single = Postcodeio.new
# single.get_single_postcode('n155eh')
single.post_multiple_postcodes(single.multiple_postcode_array)

require 'spec_helper'

describe ParseJson do

  before(:each) do
    @api_key = ENV['FIXER_API_KEY']
    @file = ParseJson.new(HTTParty::get("http://data.fixer.io/api/latest?access_key=#{@api_key}").body)
  end

  it 'Should be a Hash' do
    expect(@file.json_file).to be_a_kind_of(Hash)
  end

  it "should contain the base as EUR" do
    expect(@file.get_base_value).to eq "EUR"
  end

  it "Should have a date value as a string" do
    expect(@file.get_date_value).to be_a_kind_of(String)
  end


  it "should countain 31 rates" do
    expect(@file.number_of_rate_keys).to eq 168
    expect(@file.number_of_rate_values).to eq 168
  end

  it "should all rates should be Floats" do
    @file.get_rates.each_value {|value| expect(value).to be_a_kind_of Float}
  end

end

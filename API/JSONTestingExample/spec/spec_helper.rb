require 'json'
require 'dotenv' # enables me to access environment variables
require 'httparty' # enables me to make http requests from our ruby code
require_relative '../json_parsing_walkthrough'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end

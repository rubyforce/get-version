ENV['RACK_ENV'] ||= 'test'

require 'rack/test'
require 'get_version'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end


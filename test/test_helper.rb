ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
    def in_demo_mode
      ENV['DEMO_MODE'] = 'true'
      yield
    ensure
      ENV.delete('DEMO_MODE')
    end
  end
end

require 'mocha/setup'

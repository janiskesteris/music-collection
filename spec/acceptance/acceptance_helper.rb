require 'spec_helper'

# Put your acceptance spec helpers inside spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
Capybara.default_driver = :rack_test

RSpec.configuration.include Rails.application.routes.url_helpers, :type => :acceptance
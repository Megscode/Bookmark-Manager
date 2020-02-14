ENV['ENVIRONMENT'] = 'test'

# Require all the testing gems
require_relative './setup_test_database'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

RSpec.configure do |config|
    config.before(:each) do
      setup_test_database
    end
  end



# Bring in the contents of the `app.rb` file. The below is equivalent to: require_relative '../app.rb'
require File.join(File.dirname(__FILE__), '..', 'app.rb')


# Tell Capybara to talk to BookmarkManager
Capybara.app = BookmarkManager

### the rest of the file ###
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end

require 'watir'

#Helper Methods

def url(path = '/')
  "https://www.tumblr.com#{path}"
end

def login(params = LOGINDATA)

  #sets login status
  @logged_in = true
end

def logout
  @browser.goto.url('/logout') if logged_in?
  #sets login status
  @logged_in = false
end

def logged_in?
  @browser.body.attribute_value('class').include? "logged_in"
end

LOGINDATA = {email: "iambeingautotested@yahoo.com", key: "HashedKey123"}

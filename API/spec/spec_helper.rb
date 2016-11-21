require 'rspec'
require 'HTTParty'
#require 'pry'
#require 'http://lacedeamon.spartaglobal.com/todos'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

def url(path='/')
  'http://lacedeamon.spartaglobal.com/todos' + path
end

def wipe
  HTTParty.get(url).each do |todo|
    HTTParty.delete(url('/') + todo['id'].to_s)
    puts "wiping todo with name #{todo['title']}"
  end
end

def post(params)
  HTTParty.post(url, body: DETAILS)
end

DETAILS = {
  title: 'hello',
  due: '2010-09-09'
}

PUT_CHANGES = {
  title: 'changed',
  due: '2005-01-01'
}

PATCH_CHANGES = {
  title: 'changed again?',
  due: '2005-01-01'
}


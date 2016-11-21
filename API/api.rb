#Authors: Luke Hargraves, Tom Hogan, and Ben Allen
require 'HTTParty'

#todos_url = url + id_no


def wipe()
  get_request()
  get_result.each do |result|
    delete(result['id'])
  end
end

def get_request(url = 'http://lacedeamon.spartaglobal.com/todos')
  get_result = []
  get_result << HTTParty.get(url).each
  return get_result
end

def delete()
end
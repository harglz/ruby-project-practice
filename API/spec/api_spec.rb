#Authors: Luke Hargraves, Tom Hogan, and Ben Allen
#require 'pry'
describe 'Lacedeamon API' do
  
  it 'should wipe the API' do
    wipe
    expect(HTTParty.get(url).to_a).to eq []
  end

  after(:each) { wipe }

  it 'should post, put, patch and delete as normal' do
    post(body: DETAILS)
    expect(HTTParty.get(url).to_a[-1]['title']).to eq 'hello'
    id = HTTParty.get(url).to_a[-1]['id']
    HTTParty.put(url("/#{id}"), body: PUT_CHANGES)
    expect(HTTParty.get(url("/#{id}"))['title']).to eq 'changed'
    HTTParty.patch(url("/#{id}"), body: PATCH_CHANGES)
    expect(HTTParty.get(url("/#{id}"))['title']).to eq 'changed again?'
    HTTParty.delete(url("/#{id}"))
    expect(HTTParty.get(url).to_a).to eq []
  end
end
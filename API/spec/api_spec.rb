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
    id = HTTParty.get(url).to_a[-1]['id']
    post = HTTParty.get(url("/#{id}"))
    expect(post.check('hello', 200, 'OK')).to eq ['hello', 200, 'OK']
    HTTParty.put(url("/#{id}"), body: PUT_CHANGES)
    put = HTTParty.get(url("/#{id}"))
    expect(put.check('changed', 200, 'OK')).to eq ['changed', 200, 'OK']
    HTTParty.patch(url("/#{id}"), body: PATCH_CHANGES)
    patch = HTTParty.get(url("/#{id}"))
    expect(patch.check('my arse', 200, 'OK')).to eq ['my arse', 200, 'OK']
    HTTParty.delete(url("/#{id}"))
    expect(HTTParty.get(url).to_a).to eq []
  end

  it 'should patch the same as put (as mentioned in lesson...)' do
    post(body: DETAILS)
    expect(HTTParty.get(url).to_a[-1]['title']).to eq 'hello'
    id = HTTParty.get(url).to_a[-1]['id']
    HTTParty.put(url("/#{id}"), body: PATCH_CHANGES)
    expect(HTTParty.get(url("/#{id}"))['title']).to eq 'my arse'
  end
end

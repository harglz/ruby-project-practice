require 'watir'

describe 'Tumblr' do
  #Spin up browser, load tumblr login page
  
  before(:each) {@browser = Watir::Browser.new;
  @browser.goto url('/login') }

  it 'should allow login to a registered account, when given correct details' do
    if logged_in?
      warn "WARNING. Already Logged In."
    else
      @browser.text_field(id: 'signup_determine_email').set "iambeingautotested@yahoo.com\n"
      expect(@browser.text_field(name: 'username').value).to eq "iambeingautotested@yahoo.com"
      @browser.button(id: 'login-signin').click
      @browser.text_field(id: 'login-passwd').set "HashedKey123\n"
    end
    sleep 5
    expect(@browser.url).to eq "https://www.tumblr.com/dashboard"
    expect(logged_in?).to eq true
  end


end

require './person.rb'
require './baby.rb'

describe Baby do 
	it 'should initialize' do
		bobby = Baby.new #Create a new instance of the Person class, and put it in the variable
		expect(bobby.hair_color).to eq 'none'
		expect(bobby.top_color).to eq nil
		expect(bobby.height).to eq 0.0
		expect(bobby.smells?).to eq true
	end

	it 'should smell until cleaned' do
		bobby = Baby.new
		expect(bobby.smells?).to eq true
		bobby.clean
		expect(bobby.smells?).to eq false
	end

	it 'should cry instead of dancing' do
		bobby = Baby.new
		expect(bobby.dance).to eq "waaaah"
	end
end
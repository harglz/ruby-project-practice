describe 'bird' do
	it 'should be able to make a new bird' do
		tit = Bird.new
		expect(tit.get_bird_color).to eq nil
		expect(tit.get_bird_tpye).to eq nil
		expect(tit.get_spot_date).to eq nil
		expect(tit.get_can_fly).to eq false
		expect(tit.get_length).to eq 0.0
	end

	it 'should be able to set color' do
		tit = Bird.new
		tit.set_bird_color "blue"
		expect(tit.get_bird_color).to eq 'blue'
	end

	it 'should be able to set type' do
		tit = Bird.new
		tit.set_bird_type 'tit'
		expect(tit.get_bird_type).to eq 'tit'
	end

	it 'should be able to set spot date' do
		tit = Bird.new
		tit.set_spot_date '01/01/01'
		expect(tit.get_spot_date).to eq '01/01/01'
	end

	it 'should/not be able to fly.' do
		tit = Bird.new
		tit.set_can_fly? true
		expect(tit.get_can_fly).to eq true
	end

	it 'should be able to have a length set' do
		tit = Bird.new
		tit.set_length 15
		expect(tit.get_length).to eq 15
	end

	it 'should be able to chirp' do
		tit = Bird.new
		expect(tit.chirp).to eq 'Tweet Tweet'
	end

	it 'should be made to fly, if able' do
		tit = Bird.new
		tit.set_can_fly? true
		expect(tit.fly).to eq "I believe I can fly!"
	end

	it 'should be unable to fly, if unable' do
		tit = Bird.new
		tit.set_can_fly? false
		expect(tit.fly).to eq "I'm grounded!"
	end

	it 'should be able to waddle' do
		tit = Bird.new
		expect(tit.waddle).to eq "Waddle... Waddle... Waddle..."
	end

	it 'should be able to peck' do
		tit = Bird.new
		expect(tit.waddle).to eq "I'll bite your hand off!"
	end

	it 'should be able to describe itself in full' do
		tit = Bird.new
		tit.set_bird_color 'blue'
		tit.set_bird_type 'tit'
		tit.set_spot_date '01/01/01'
		tit.set_can_fly? true
		tit.set_length 15
		expect(tit.describe).to eq "I am a blue tit. I was spotted on 01/01/01. I can fly and I am 15 cm long."
	end
end













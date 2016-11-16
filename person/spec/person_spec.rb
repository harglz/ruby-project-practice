describe Person do 
	it 'should initialize with hair, top, height' do
		bob = Person.new('brown', 'green', 2.0) #Create a new instance of the Person class, and put it in the variable
		expect(bob.class).to eq Person
		expect(bob.hair_color).to eq 'brown'
		expect(bob.top_color).to eq 'green'
		expect(bob.height).to eq 2.0
	end

	it 'should initialize with hair' do
		bob = Person.new('brown') #Create a new instance of the Person class, and put it in the variable
		expect(bob.class).to eq Person
		expect(bob.hair_color).to eq 'brown'
		expect(bob.top_color).to eq nil
		expect(bob.height).to eq 0.0
	end

	it 'should let us set the hair color' do
		bob = Person.new('black')
		bob.hair_color = 'brown'
		expect(bob.hair_color).to eq 'brown'
	end

	it 'should let us set the top color' do
		bob = Person.new('brown')
		bob.top_color = 'black'
		expect(bob.top_color).to eq 'black'
	end

	it 'should let us set the height' do
		bob = Person.new('brown')
		bob.height = 6.5
		expect(bob.height).to eq 6.5
	end

	it 'should be able to dance' do
		bob = Person.new('brown')
		expect(bob.dance).to eq "I'm Dancing!"
	end

	it 'should be able to sleep' do
		bob = Person.new('brown')
		expect(bob.sleep).to eq "ZzzZzzZzzZzzZzz"
	end
end
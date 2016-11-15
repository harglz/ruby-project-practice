describe 'arithmetic machine' do 
	it 'should add two numbers' do
		expect(add_numbers(5, 6)).to eq 11
	end

	it 'should subtract two numbers' do
		expect(subtract_numbers(5, 3)).to eq 2
	end 

	it 'should add an array of numbers' do
		expect(add_array_numbers([5, 6, 10])).to eq 21
	end

	it 'should return 0 for an empty array' do
		expect(add_array_numbers([])).to eq 0
	end

	it 'should multiply two numbers' do
		expect(multiply_numbers(5, 3)).to eq 15
	end

	it 'should divide two numbers' do
		expect(divide_numbers(10, 2)).to eq 5
	end

	it 'should multiply an array of numbers' do
		expect(multiply_array_numbers([1, 2, 3])).to eq 6
	end

	it 'should not divide by 0' do
		expect(divide_numbers(6,0)).to eq 'inf'
	end

	it 'should raise an input to a power specified' do
		expect(raise2power(2,4)).to eq 16
	end

	it 'should return the factorial of an input' do
		expect(factorial(5)).to eq 120
	end

	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'add', data: [1, 3, 5] })).to eq 9
	end
	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'divide', data: [6, 2] })).to eq 3
	end
	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'multiply', data: [3,5]})).to eq 15
	end
	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'indices', data: [2, 4]})).to eq 16
	end
	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'factorial', data: [5] })).to eq 120
	end
	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'subtract', data: [5,2]})).to eq 3
	end
	it 'should return the result for whichever operator is required' do
		expect(smooth_operator({function: 'nothing', data: [1,2,3]})).to eq 'That function is not allowed'
	end
end

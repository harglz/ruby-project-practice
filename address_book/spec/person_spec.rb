require './person.rb'

describe 'Person' do
	
	it 'should initialize with fn, sn, date(optional)' do
		person = Person.new('joe', 'bloggs', '1 Jan 1990')
		expect(person.dob.class).to eq Date
		expect(person.first_name).to eq 'Joe'
		expect(person.surname).to eq 'Bloggs'
		expect(person.fullname).to eq 'Joe Bloggs'
	end

	it 'should allow a person to add a list of email addresses' do
		person = Person.new('joe', 'bloggs', '1 Jan 1990')
		expect(person.emails).to eq []
		person.add_email "joe@foo.com"
		person.add_email "joe.bloggs@work.com"
		expect(person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]
		person.remove_email(0)
		expect(person.emails).to eq ["joe.bloggs@work.com"]
	end
	
	it 'should allow a person to add a list of phone numbers' do
		person = Person.new('joe', 'bloggs', '1 Jan 1990')
		expect(person.phones).to eq []
		person.add_phone "07712345678"
		person.add_phone "02012345678"
		expect(person.phones).to eq ["07712345678", "02012345678"]
		person.remove_phone(0)
		expect(person.phones).to eq ["02012345678"]
	end

	it 'should allow a person to have their details listed' do
		person = Person.new('joe', 'bloggs', '1 Jan 1990')
		person.add_email "joe@foo.com"
		person.add_phone "07712345678"
		person.add_phone "02012345678"
		expect(person.to_s).to eq "Joe Bloggs was born on 1990-01-01.\n Their email addresses are: [\"joe@foo.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"
	end
end
require './person.rb'
require './family_member.rb'
require './address_book.rb'

describe 'Address Book' do
  it 'should' do
    p1 = Person.new('joe', 'bloggs', '1 Jan 1990')
    p2 = Person.new('andy', 'nother', '2 Jan 1995')
    book = AddressBook.new
    expect(book.list).to eq []
    book.add p1
    book.add p2
  end
end
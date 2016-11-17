require './person.rb'
require './family_member.rb'
require './address_book.rb'

describe 'Address Book' do
  it 'should be listable and appendable' do
    p1 = Person.new('joe', 'bloggs', '1 Jan 1990')
    p2 = Person.new('andy', 'nother', '2 Jan 1995')
    book = AddressBook.new
    expect(STDOUT).to receive(:puts).with('Address Book')
    expect(STDOUT).to receive(:puts).with('------------')
    book.list
    book.add p1
    book.add p2
    expect(STDOUT).to receive(:puts).with('Address Book')
    expect(STDOUT).to receive(:puts).with('------------')
    expect(STDOUT).to receive(:puts).with('Entry 1: Joe Bloggs')
    expect(STDOUT).to receive(:puts).with('Entry 2: Andy Nother')
    book.list
  end
end
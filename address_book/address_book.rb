require './person.rb'
require './family_member.rb'

class AddressBook
  def initialize
    @contents = []
  end

  def list
    puts "Address Book"
    puts "------------"
    if @contents.length > 0
      @contents.length.times { |time| puts "Entry #{time + 1}: #{@contents[time]}" }
    end
  end

  def add(entry)
    @contents << entry.fullname
  end
end
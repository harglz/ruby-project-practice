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
      @contents.each_with_index { |person, i| puts "Entry #{i + 1}: #{person.fullname}" }
    end
  end

  def add(entry)
    if entry.class == Person || entry.class == FamilyMember
      @contents << entry
    else
      raise "You must provide a valid Person object"
    end
  end
end
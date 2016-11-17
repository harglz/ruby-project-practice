require './person.rb'
require './family_member.rb'

class AddressBook
  def initialize
    @contents = []
  end

  def list
    @contents.each {|entry| puts entry.to_s }
  end

  def add(entry)
    @contents << entry
  end
end
require './person.rb'
require './family_member.rb'
require 'YAML'
require 'pry'

class AddressBook
  def initialize
    @contents = []
  end

  def list
    puts "Address Book"
    puts "------------"
    if @contents.length > 0
      @contents.each_with_index do |person, i| 
        puts "Entry #{i + 1}: #{person.fullname}"
      end
    end
  end

  def add(entry)
    if entry.class == Person || entry.class == FamilyMember
      @contents << entry
    else
      raise "You must provide a valid Person object"
    end
  end

  def load_yaml(path='phonebook.yml')
    details = YAML.load(File.open(path))
    details['people'].each do |person|
      new_person = Person.new(person['fname'], person['surname'], person['dob'])
      person['emails'].each {|email| new_person.add_email email}
      person['phones'].each {|phone| new_person.add_phone phone}
      add(new_person)
    end
  end
end
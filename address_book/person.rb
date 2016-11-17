require 'date'

class Person
  attr_reader :dob, :first_name, :surname, :emails, :phones
  def initialize(first_name, surname, dob = '0001/01/01')
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @dob = Date.parse(dob)
    @emails = []
    @phones = []
    end

  def fullname
    @fullname = first_name + ' ' + surname
    @fullname
  end

  def add_email(email)
    @emails << email
  end

  def remove_email(index)
    @emails.delete_at(index)
  end

  def add_phone(phone)
    @phones << phone
  end

  def remove_phone(index)
    @phones.delete_at(index)
  end

  def to_s
    fullname
    "#{@fullname} was born on #{@dob}.\n Their email addresses are: #{@emails}.\n Their phone numbers are #{@phones}"
  end

  def print_details
    fullname
    add_email('lhargraves95@gmail.com')
    add_email('lhargraves@spartaglobal.co')
    add_phone('07460666670')
    add_phone('02089491836')
    puts @fullname
    puts "-" * @fullname.length
    puts "Date of Birth: #{@dob.strftime("%-d %b %Y")}"
    puts ""
    puts "Email Addresses:"
    @emails.each {|email| puts "- " + email}
    puts ""
    puts "Phone Numbers:"
    @phones.each {|phone| puts "- " + phone}
    puts ""
  end
end

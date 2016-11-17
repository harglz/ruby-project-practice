class FamilyMember < Person
  attr_accessor :relation
  def initialize(first_name, surname, relation = 'Family', dob = '0001/01/01')
    super(first_name, surname, dob)
    @relation = relation
  end
end
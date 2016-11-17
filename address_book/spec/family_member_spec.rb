require './person.rb'
require './family_member.rb'

describe 'FamilyMember' do
  
  it 'should be a person that can have default family relationships' do 
    fam = FamilyMember.new('joe', 'bloggs')
    expect(fam.dob.class).to eq Date
    expect(fam.first_name).to eq 'Joe'
    expect(fam.surname).to eq 'Bloggs'
    expect(fam.fullname).to eq 'Joe Bloggs'
    expect(fam.relation).to eq 'Family'
  end

  it 'should be a person that can have other relationships' do 
    fam = FamilyMember.new('uncle', 'bloggs', 'Uncle', '01 Jan 0001')
    expect(fam.dob.class).to eq Date
    expect(fam.first_name).to eq 'Uncle'
    expect(fam.surname).to eq 'Bloggs'
    expect(fam.fullname).to eq 'Uncle Bloggs'
    expect(fam.relation).to eq 'Uncle'
  end
end
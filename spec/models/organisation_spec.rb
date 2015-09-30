require 'rails_helper'

RSpec.describe Organisation, type: :model do
  
  let!( :org ) { FactoryGirl.create(:organisation) }
  
  it 'should be valid' do
    expect( org ).to be_valid
  end
  
  it 'shold have password larger than 8 characters' do
    org.password = "142"
    expect( org ).to_not be_valid
  end
  
  it 'should have a valid email' do
    org.email ="asdf.asdf@dfs"
    expect( org ).to_not be_valid
  end
  
  it 'should be unique' do
    org_dup = org
    expect(org_dup).to_not be_valid
  end
  
end

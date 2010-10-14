require "#{File.dirname(__FILE__)}/spec_helper"

describe Profile do
  before(:each) do
    @profile = Profile.new(:name => 'test user')
  end

  it 'should be valid' do
    @profile.should be_valid
  end

  it 'should require a name' do
    @profile = Profile.new
    @profile.should_not be_valid
    @profile.errors[:name].should include("can't be empty")
  end
end

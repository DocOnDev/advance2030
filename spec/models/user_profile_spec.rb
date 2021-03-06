require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe UserProfile do
  before(:each) do
    @user_profile = Factory.build(:user_profile)
  end
  
  after(:each) do
    @user_profile.destroy
  end

  it "should create a new instance given valid attributes" do
    @user_profile.should be_valid
  end
end

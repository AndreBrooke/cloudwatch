require 'rails_helper'

RSpec.describe User, type: :model do
	
 	it "has a valid factory" do
 		create(:user).should be_valid
 	end
 	it "is invalid without a name" do
 		
 		expect(build(:user, :name => nil)).to_not be_valid
 	end
 	it "is invalid without an email" do
 		expect(build(:user, :email => nil)).to_not be_valid
 	end
 	it "is invalid without a role" do
 		expect(build(:user, :role => nil)).to_not be_valid
 	end

 	it "will return user when username is searched" do
 		user =  create(:user)
 		expect(User.search("Nicholas")).to include(user)
 	end

 	it "will not return user when incorrect username is searched" do
 		user = create(:user)
 		expect(User.search("xy")).not_to include(user)
 	end

 	it "will give notice to superuser and admin that they are superusers" do
 		user = build(:user, :role => 'admin')
 		
 		expect(user.authorized).to eq ("You are a super user")
 	end
 	
end

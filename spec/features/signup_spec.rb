require 'rails_helper'

describe "the signin process", :type => :feature do
  before :each do
    create(:user)
  end

  it "signs me in" do

  	visit '/login'
  	within("#login") do
  		fill_in 'email', with: "Nicholas@gmail.com"
  		fill_in "password", with: 'nicholas123'
  	end
  	click_button 'Submit'
  	expect(page).to have_content "Signed in as"
  end
end





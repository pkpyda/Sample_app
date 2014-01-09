require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "have content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content("Sample App")
    end

   it "should have the title 'Home'" do
	visit '/static_pages/home'
	page.should have_title("Sample App")
   end



  end
	
describe "Help page" do
	it "have the content 'Help'" do
		visit '/static_pages/help'
		page.should have_content("Help")
	end

   it "should have the title 'Help'" do
	visit '/static_pages/help'
	page.should have_title("Sample App | Help")
   end
  end

describe "About page" do
	it "have the content 'About Us'" do
		visit '/static_pages/about'
		page.should have_content("About Us")
	end

   it "should have the title 'About US'" do
	visit '/static_pages/about'
	page.should have_title( "Sample App | About Us")
   end
  end	
	
end

require 'spec_helper'

describe "StaticPages" do
	subject {page}
  describe "Home page" do
	before{visit root_path}

    it {should have_selector('h1',text:"Sample App")}
    it {should have_content("Sample App")}
    it {should have_title("Sample App")}
  end
	
describe "Help page" do
	before {visit help_path}
	it {should have_selector('h1',text:"Help")}
	it {should have_content("Help")}
   	it {should have_title("Sample App | Help")}
   
  end

describe "About page" do
	before { visit about_path}
	it {should have_selector('h1',text:"About")}
	it {should have_content("About Us")}
   	it {should have_title( "Sample App | About Us")}
   
  end	



describe "contact page" do
	before {visit contact_path}
	it {should have_selector('h1',text:"Contact")}
	it {should have_content("contact")}
   	it {should have_title( "Sample App | Contact")}
   
  end	
	
end

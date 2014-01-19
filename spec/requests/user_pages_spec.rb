require 'spec_helper'

describe "UserPages" do
	subject{page}
  describe "signup page" do
	before {visit signup_path}
    it { should have_selector('h1',text:'Sign up') }
    it { should have_title('Sample App | Sign up') }
    
	let(:submit){"Create my account"}
	
	describe "With invalid information" do
		it "should not create a user"do
			expect{click_button submit}.not_to change(User,:count) 
		end	
	end	
	

	describe "Valid information" do
		before do
			fill_in "Name",		with:"Praveen Kumar"
			fill_in "Email",	with:"praveen.soft20@gmail.com"
			fill_in "Password",	with:"foobar"
			fill_in "Confirmation",	with:"foobar"
		end
		it"Should create a User" do
			expect{click_button submit}.to change(User,:count).by(1)
		end	
	end

  end
  describe "profile page" do
	let(:user){FactoryGirl.create(:user)}
	before {visit user_path(user)}
    it { should have_selector('h1',text: user.name) }
    it { should have_title(user.name) }

  end


  
end

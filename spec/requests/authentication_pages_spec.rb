require 'spec_helper'

describe "AuthenticationPages" do
	subject {page}
  describe "Signin Page" do
	before {visit signin_path}
    it{should have_title("Sign in")}
    it{should have_selector('h1',text: 'Sign in')}	
     
    
  end
end

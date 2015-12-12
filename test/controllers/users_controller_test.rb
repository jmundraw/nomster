require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	test "get user dashboard" do 
		# Create and authenticate user
		user = FactoryGirl.create(:user)
		sign_in user

		get :show, :id => user.id
		assert_response :success
	end
end

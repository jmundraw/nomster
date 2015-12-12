FactoryGirl.define do 
	factory :user do 
		sequence :email do |n| 
			"test#{n}@nomster.com"
		end
		password "password"
		password_confirmation "password"
	end


	factory :place do 
		name "Starbucks"
		address "1234 North St"
		description "best coffee place"
		association :user
	end

	factory :comment do 
		message "hello"
		rating "5_stars"
		association :user
		association :place
	end

end
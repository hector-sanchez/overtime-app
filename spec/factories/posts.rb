FactoryGirl.define do
	factory :post do
		date Date.today
		rationale 'Some Rationale'
		user
	end

	factory :second_post, class: 'Post' do
		date Date.yesterday
		rationale 'Some more content'
		user
	end
	factory :post_from_other_user do
		date Date.today
		rationale 'Some Rationale'
		non_authorized_user
	end
end
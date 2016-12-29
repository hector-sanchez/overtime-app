@user = User.create(email: 'test@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Jon', last_name: 'Snow')

puts "1 user created."

AdminUser.create(email: 'admin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Admin', last_name: 'User')

puts "1 admin user created."

100.times do |counter|
	Post.create!(date: Date.today - (counter.days + 1), rationale: "#{counter + 1} - rationale content", user_id: @user.id)
end

puts "100 posts have been created!"
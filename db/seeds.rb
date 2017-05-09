@employee = Employee.create(email: 'test@test.com', 
										password: 'asdfasdf', 
										password_confirmation: 'asdfasdf', 
										first_name: 'Jon', 
										last_name: 'Snow',
										phone: '7183955601')

puts "1 employee created."

AdminUser.create(email: 'admin@test.com', 
									password: 'asdfasdf', 
									password_confirmation: 'asdfasdf', 
									first_name: 'Admin', 
									last_name: 'User',
									phone: '7183955601')

puts "1 admin user created."

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

100.times do |counter|
	Post.create!(date: Date.today - (counter.days + 1), rationale: "If you've never used git before, first you need to set up your name and e-mail. Run the following commands to let git know your name and e-mail address.", user_id: @employee.id, overtime_request: 2.5)
end

puts "100 posts have been created!"


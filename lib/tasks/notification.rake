namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
  	puts "I am in a rake task!"
  end
end

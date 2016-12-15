100.times do |counter|
	Post.create!(date: Date.today - (counter.days + 1), rationale: "#{counter + 1} - rationale content")
end

puts "100 posts have been created!"
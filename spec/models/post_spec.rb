require 'rails_helper'

RSpec.describe Post, type: :model do
	describe "creation" do
		before do
			@post = Post.create(date: Date.today, rationale: 'Anything')
		end
		
		it "can create a post" do
			expect(@post).to be_valid
		end

		it "cannot create a post without date and rationale" do
			@post.date = nil
			@post.rationale = nil

			expect(@post).to_not be_valid
		end
	end	
end

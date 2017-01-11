require 'rails_helper'

RSpec.describe Post, type: :model do
	describe "creation" do
		before do
			@post = FactoryGirl.create(:post)
		end
		
		it "can create a post" do
			expect(@post).to be_valid
		end

		it "cannot create a post without date and rationale" do
			@post.date = nil
			@post.rationale = nil
			@post.overtime_request = nil

			expect(@post).to_not be_valid
		end

		it 'has an overtime request greater than 0.0' do
			@post.overtime_request = 0.0
			expect(@post).to_not be_valid
		end
	end	
end

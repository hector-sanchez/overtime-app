require 'rails_helper'

describe 'AuditLog Feature' do
	describe 'index' do
		before do
			FactoryGirl.create(:audit_log)
			admin_user = FactoryGirl.create(:admin_user)
			login_as(admin_user, :scope => :user)

	 		visit audit_logs_path
		end

		it 'has an index that can be reached' do
			expect(page.status_code).to eq 200
		end

		it 'renders audit log content' do
			expect(page).to have_content(/SNOW, JON/)
		end

		xit 'cannot be accessed by non-admin users' do
		end
	end
end
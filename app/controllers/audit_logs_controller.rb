class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.includes(:user).all
	end
end

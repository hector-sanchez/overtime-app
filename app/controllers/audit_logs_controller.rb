class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.includes(:user).all
		authorize @audit_logs
	end
end

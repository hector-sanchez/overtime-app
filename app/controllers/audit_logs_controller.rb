class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.includes(:user).page(params[:page]).per(10)
		authorize @audit_logs
	end
end

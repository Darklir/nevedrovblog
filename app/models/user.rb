class User < ActiveRecord::Base
	has_secure_password

	def admin?
		self.role == "admin"
	end

	def super_user?
		self.role == "super_user"
	end
end

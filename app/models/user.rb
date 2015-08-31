class User < ActiveRecord::Base
	has_secure_password

	validates :first_name, presence: true, length: {
		minimum: 3,
		maximum: 25
	}
	validates :last_name, presence: true, length: {
		minimum: 3,
		maximum: 25
	}
	validates :email, presence: true
	validates :password, length: {
		minimum: 8,
		maximum: 20
	}

	def admin?
		self.role == "admin"
	end
end

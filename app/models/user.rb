class User < ApplicationRecord
	validates :email, uniqueness: true, presence: true 
	validates :name, presence: true
	validates :role, presence: true 
	enum role: { :user => 0, :superuser => 1, :admin => 2}
	has_secure_password

	def self.search(search)
		where("name ILIKE ?", "%#{search}%")
	end

	def authorized

		if self.role == "superuser" || "admin"
			"You are a super user"
		end
	end
		
	



	
end

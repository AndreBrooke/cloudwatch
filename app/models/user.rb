class User < ApplicationRecord
	enum role: { :user => 0, :superuser => 1, :admin => 2}
	has_secure_password

	def self.search(search)
		where("name ILIKE ? OR email ILIKE? OR role ILIKE?", "%#{search}%", "%#{search}%", "%#{search}%")
	end
	
end

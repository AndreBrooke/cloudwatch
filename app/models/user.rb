class User < ApplicationRecord
	enum role: { :user => 0, :superuser => 1, :admin => 2}
	
end

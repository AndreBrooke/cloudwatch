class UserController < ApplicationController
	has_secure_password


	def new
		@user = User.new(user_from_params)
	end

	def create
		@user = User.new(user_from_params)
		if user = User.authenticate(params[:username], params[:password])
			session[:current_user_id] = user.id
			redirect_to root_url
		end
	end


	def show
	end

	def edit
	end

	def delete
	end

	private

	def user_params
		params.require(:user).permit(:name, :password, :role)

	end
end

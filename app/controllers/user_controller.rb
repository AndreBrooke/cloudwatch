class UserController < ApplicationController
	

	def new
		
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			session[:user_id] = @user.id
			redirect_to '/'
		else
			redirect_to '/signup'
		end
	end


	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
		if params[:search]
			@users = User.search(params[:search]).page(params[:page]).order("created_at DESC")
			respond_to do |format|
				format.html {redirect_to users_path}
				format.js
			end
		else

		
			@users = User.all.page(params[:page]).order('created_at DESC')
		end
	end




	private

	def user_params
		params.require(:user).permit(:name, :password, :email, :password_confirmation, :role)

	end


end

class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :avatar))
		if user.save
			redirect_to rooms_path
			session["user_id"] = user.id
		else
      redirect_to new_user_path
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def update
	end

	def destroy
	end

end

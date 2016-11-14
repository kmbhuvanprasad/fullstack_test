class UsersController < ApplicationController
	def new
		@user=User.new
	end

	def create
		@user=User.new(User_params)
		@company.save
		redirect_to new_user_path
	end

	def index
		@user=User.all
	end

	def show
		@user=User.find(params[:id])
  	end
  	
	private
	 def user_params
		params.require(:user).permit(:firstname,:lastname.:username,:email,:phonenumber,:password)
	 end
end

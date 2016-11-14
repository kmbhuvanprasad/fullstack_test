class UsersController < ApplicationController
	def new
			@user=User.new
	end

	def create
	 @user=User.new(user_params)
	 # binding.pry
	  if @user.save
	 	redirect_to new_session_path
	  else
		redirect_to new_user_path
	  end
	end

   def index
   	@user=User.new
	 	@user=User.all
	end


	private
	 def user_params
	 	params.require(:user).permit(:firstname,:lastname,:username,:email,:phonenumber,:password,:confirmation)
	 end

end

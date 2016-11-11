class UsersController < ApplicationController
	def new
			@user=User.new
	end

	 def create
	 	@user=User.new(user_params)
	  @user.save
	  redirect_to new_session_path
	end

   def index
   	@user=User.new
	 	@user=User.all
	 end


	private
	 def user_params
	 	params.require(:user).permit(:Firstname,:Lastname,:username,:Email,:password,:confirmation)
	 end

end

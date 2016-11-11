class UsersController < ApplicationController
	def new
	end

	 def create
	 	@user=User.new(user_params)
	  @user.save
	  redirect_to user_index_path
	end

   def index
	 	@user=User.all
	 end


	private
	 def user_params
	 	params.require(:user).permit(:Firstname,:Lastname,:username,:Email,:password,:confirmation)
	 end

end

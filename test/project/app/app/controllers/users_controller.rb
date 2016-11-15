class UsersController < ApplicationController
	def new
		@user=User.new
	end

	def create
	@user=User.new(user_params)
	  if @user.save
	 		redirect_to signup_path
	  else
			render'new'
	  end
	end

	def edit
		@user=User.find_by_id(params[:id])
	end

  def index
   	# @user=User.new
	 	@user=User.all
	end

	private
	 def user_params
	 	params.require(:user).permit(:firstname,:lastname,:username,:email,:phonenumber,:password,:confirmation)
	 end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id]=user.id
      flash[:success]="welcome to event page"
      redirect_to event_index_path
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def edit
      @user=User.find_by_id(params[:id])
  end

  def update
      @user=User.find(params[:id])
      @user.update(user_params)
      redirect_to event_index_path
  end

  private
   def user_params
    params.require(:user).permit(:email,:phonenumber)
   end
end

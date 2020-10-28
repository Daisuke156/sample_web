class SessionsController < ApplicationController
  before_action :forbid_login_user, only: [:new, :create,]
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render "new"
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  private

    def user_params
      params.permit(:email, :password, :password_confirmation)
    end
end

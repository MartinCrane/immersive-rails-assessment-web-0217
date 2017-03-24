class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: login_params[:username])

    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      session[:username] = user.username
      redirect_to "appearances/index"
    else
      flash[:error] = "Username or password invalid"
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to "/"
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end

end

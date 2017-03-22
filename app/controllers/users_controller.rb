class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    if user = User.create(user_params)

      redirect_to user_path(user)
    else
      flash[:error] = user.errors
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end



  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create

    redirect_to "episodes/index"
  end

end

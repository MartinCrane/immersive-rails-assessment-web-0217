class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def show
  end

  def new
    @appearance = Appearance.new
  end

  def create
    
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def apperance_params
    params.require(:apperance).permit(:guest_name, :episode_name, :rating)
  end
end

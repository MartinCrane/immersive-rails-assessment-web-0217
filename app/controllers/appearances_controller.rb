class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def show

    @appearance = Appearance.find_by(id: params[:id])
    byebug
  end

  def new
    @appearance = Appearance.new
  end

  def create
    # guest_id = Guest.name_search_to_id(apperance_params[:guest_name])
    # episode_id = Episode.number_search_to_id(apperance_params[:episode_number])
    appearance = Appearance.create(apperance_params)
    if appearance.valid?
      redirect_to appearance_path(appearance)
    else
      flash[:error] = appearance.errors
      redirect_to new_appearance_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def apperance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end

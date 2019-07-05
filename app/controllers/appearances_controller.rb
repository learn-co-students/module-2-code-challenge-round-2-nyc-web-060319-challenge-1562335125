class AppearancesController < ApplicationController
  def create
    # byebug
    @new_appearance = Appearance.new(appearances_params(params))
    if @new_appearance.valid?
      @new_appearance.save!
      byebug
      redirect_to episode_path(@new_appearance.episode)
    else
      byebug
      render :new
    end
  end

  def new
    @guests = Guest.all
    @episodes = Episode.all

  end

  def appearances_params(params)
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end
end

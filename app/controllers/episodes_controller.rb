class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new 
    @episode = Episode.new
    @guests = Guest.all
  end

  def create 
    @episode = Episode.new(episodes_params)
    if @episode.valid?
      @episode.save 
      redirect_to episode_path(@episode)
    else 
      @episode.errors.full_messages 
      render :new 
    end
  end

  private
  def episodes_params
    params.require(:episode).permit(:date, :number)
  end
end

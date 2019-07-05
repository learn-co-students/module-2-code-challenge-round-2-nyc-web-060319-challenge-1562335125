class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new

  end

  def create

  end

  def show
    @episode = Episode.find(params[:id])
    # byebug
  end
end

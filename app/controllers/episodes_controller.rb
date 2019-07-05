class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    # As a user, I should be able to view all of the guests for a particular episode. 
    #This means that we'll need an episode's show page that lists out all of the guests 
    #who were on that episode.
    # ^ Need join table to work before can pull guests on given episode.
  end


end

class GuestEpisodesController < ApplicationController

    def index 
        @guestepisodes = GuestEpisode.all
    end

    def show 
        @guestepisode = GuestEpisode.find(params[:id])
    end

    def new 
        @guestepisode = GuestEpisode.new
        @guests = Guest.all 
        @episodes = Episode.all
    end
  
    def create 
        @guestepisode = GuestEpisodes.new(guesteipsode_params)
        if @guestepisode.valid?
            @guestepisode.save 
            # redirect_to guesteipsode_path(@guestepisode)
          else 
            @guestepisode.errors.full_messages 
            render :new 
          end
    end

    private 
    def guesteipsode_params
      params.require(:guestepisode).permit(:guest_id, :episode_id)
    end
end

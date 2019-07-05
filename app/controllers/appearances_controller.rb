class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new    
    end
    
    def create
        @appearance = Appearance.new(appearances_params)
            # (byebug) appearances_params[:guest_id]
            # "1"
            # (byebug) @appearance.guest_id = appearances_params[:guest_id]
            # "1"
            # (byebug) @appearance.valid?
            # Guest Load (0.1ms)  SELECT  "guests".* FROM "guests" WHERE "guests"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
            # Episode Load (0.1ms)  SELECT  "episodes".* FROM "episodes" WHERE "episodes"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
            # true
            # (byebug) 
            # ... I don't know why this is rolling back when try to save.... 
        # @appearace.guest_id = appearances_params[:guest_id]
        # @appearace.episode_id = appearances_params[:episode_id]
        # @appearace.rating = appearances_params[:rating]

        @appearance.save
        
        #validate rating between 1 & 5. Don't need, made integer dropdown
        # if @appearance.valid?
        #     @appearance.save
        #     redirect_to episode_path # redirected to the selected episode's show page.
        # else

        #     render :new 
        # end
        @episode = Episode.find(@appearance.episode_id)
      
        #redirect_to episode_path(@appearace.episode_id)  # TEST !!  Doesn't like.
            # (byebug) @appearance.episode_id
        redirect_to episode_path(@episode)     
        #redirect_to "http://localhost:3000/episodes/#{@appearace.episode_id}"

    end
  
    def show
      @guest = Guest.find(params[:id])
    end
  
    private
    def appearances_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

  end
class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new 
    @guest = Guest.new
    @episodes = Episodes.all
  end

  def create 
    @guest = Guest.new(guests_params)
    if @guest.valid?
      @guest.save 
      redirect_to guest_path(@guest)
    else 
      @guest.errors.full_messages 
      render :new 
    end
  end

  private
  def guests_params
    params.require(:guest).permit(:name, :occupation)
  end
end

class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new

  end

  def create

  end

  def show
    @guest = Guest.find(params[:id])
  end
end

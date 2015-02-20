class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.create(params.require(:room).permit(:topic, :headline, :photo))
    if room.save
      redirect_to rooms_path
    # else
    #   redirect_to new_post_path
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
  end
  
end
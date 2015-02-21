class RoomsController < ApplicationController

  def index
    @rooms = Room.all.reverse
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.create(room_params)
    @room = Room.last
    if room.save
      redirect_to @room
    else
      redirect_to new_post_path
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
  end
  
  private

  def room_params
    params.require(:room).permit(:topic, :headline, :photo)
  end

end
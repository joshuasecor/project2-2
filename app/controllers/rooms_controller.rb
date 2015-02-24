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

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update_attributes(room_params)
    redirect_to rooms_path
  end

  def destroy
    Room.find(params[:id]).destroy
    redirect_to rooms_path
  end
  
  private

  def get_room
    @room = Room.where(id: params[:room_id]).first
  end

  def room_params
    params.require(:room).permit(:topic, :headline, :photo, :room_text, :soundcloud)
  end

end
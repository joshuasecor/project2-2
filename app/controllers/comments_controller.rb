class CommentsController < ApplicationController

	before_action :get_room

	def new
		@room = get_room
    @comment = Comment.new
  end


  def create
  	@comment = Comment.create(comment_params)
  	@comment.room = get_room

  	if @comment.save
      redirect_to @room
    end
  end

  private

  	def get_room
  		@room = Room.where(id: params[:room_id]).first
  	end

  	def comment_params
  		params.require(:comment).permit(:comment_text, :room_id)
  	end

end
class Comment < ActiveRecord::Base
	belongs_to :user
	belong_to :room
end

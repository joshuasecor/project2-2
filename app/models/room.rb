class Room < ActiveRecord::Base

	has_attached_file :photo, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
	
	has_many :comments, dependent: :destroy

	has_many :users, through: :comments

end

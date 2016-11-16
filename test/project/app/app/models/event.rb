class Event < ActiveRecord::Base
	has_many :users,through: :participants
	has_many :participants,dependent: :destroy
	belongs_to :owner,class_name:"User" 
end

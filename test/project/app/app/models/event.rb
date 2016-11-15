class Event < ActiveRecord::Base
	has_many :users,through: :participants
	has_many :participants
	belongs_to :owner,class_name:"User" 
end

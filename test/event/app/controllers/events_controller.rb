class EventsController < ApplicationController
	def home
	end

	def new
		 @event=Event.new 
	end
	
	def create
		@event=Event.new(event_params)
		@event.save
		redirect_to new_event_path
	end

		
		
	# private
	# def event_params
	# 	params.require(:event).permit(:)
end

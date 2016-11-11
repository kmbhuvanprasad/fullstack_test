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

     def index
   		@event=Event.new
	 	@user=User.all
	 end


	private
	 def event_params
	 	params.require(:event).permit(:event_name,:venue,:date,:time,:description,:invited,:status)
	 end
end

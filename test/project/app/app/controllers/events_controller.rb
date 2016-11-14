class EventsController < ApplicationController
	def home
	end
	def new
		@event=Event.new
	end

	def create
	  @event=Event.new(event_params)
	  if @event.save
	  	redirect_to event_index_path
	  else
	  	redirect_to signup_path
	  end
	end

     def index
   		# @event=Event.new
	 	@event=Event.all
	 end


	private
	 def event_params
	 	params.require(:event).permit(:event_name,:venue,:date,:time,:description,:invited,:status)
	 end
end

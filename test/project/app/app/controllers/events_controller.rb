class EventsController < ApplicationController
	def home
	end

	def new
		@event=Event.new
	end

	def create
	  User.find(session[:user_id]).events << Event.new(event_params)
	  redirect_to event_index_path
	end

     def index
	 	@event=Event.all
	 end

	 def edit
	 	@event=Event.find(params[:id])
	 end

	  def update
	  	binding.pry
	 	@event=Event.find_by_id(params[:id])
		@event.update(event_params)
 		redirect_to event_index_path
	 end

	private	
	 def event_params
	 	params.require(:event).permit(:event_name,:venue,:date,:time,:description,:invited,:status)
	 end

end

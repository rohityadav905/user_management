class EventsController < ApplicationController
	before_action :authenticate_user!
	def new
		@user = User.find(params[:id])
	end

	def create
		#debugger
		@event = Event.new(event_params)	
    	if @event.save
    	 @user = User.all
    	 @user.each do |u|
    	 	@user_email = u.email
     	 	MessageMailer.event_invitation(@event,@user_email).deliver
     	 end	  
      	redirect_to events_path
    	end  
	end

	def index
  		@events = Event.eventindex
	end

	private
  	def event_params
      	params.require(:event).permit(:title, :location , :start_event, :end_event, :event_description , :organizer_name , :organizer_description , :event_logo , :user_id , :eventtype_id , :eventtopic_id)
 	end 
end

class EventsController < ApplicationController
	def trackEvent

		eventData = ""
		params.each do |key,value|
		  eventData += key + "=" + value + "; "
		end

		@event = Event.new(:eventName => params[:eventName], :eventData => eventData);
	
		@event.save

		render :text => 'ok'
	end

	def index

	#	if params[:query].blank
			#@events = Event.all 
		#	render :text => "blank"
	#	else
		#	@events = Event.where("\"eventData\" like '%" + params[:query] + "%'").all
		#render :text => params[:query]
	#	end
		
	end


end

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

		if params.has_key?(:query)
			@events = Event.all 
		else
			@events = Event.where("\"eventData\" like '%" + params[:query] + "%'").all
			#@events = Event.all 
		end
		
		
	end


end

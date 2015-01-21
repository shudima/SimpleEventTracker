class EventsController < ApplicationController
	def trackEvent

		eventData = ""
		params.each do |key,value|

		  if key == "data" or key == "device_id"
		  	  eventData += key + "=" + value + "; "
		  end
		end

		@event = Event.new(:eventName => params[:eventName], :eventData => eventData);
	
		@event.save

		render :text => 'ok'
	end

	def index

		if params[:query] == "all"
			@events = Event.all 
		else if paras[:query] == "deleteall"
			Event.delete_all
			redirect_to "/events/all"
		end
			@events = Event.where("\"eventData\" like '%" + params[:query] + "%'").all
			#@events = Event.all 
		end
		
		
	end




end

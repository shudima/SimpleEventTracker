class EventsController < ApplicationController
	def trackEvent
		@event = Event.new(:eventName => params[:eventName], :eventData => params[:eventData]);
	
		@event.save

		render :text => 'ok'
	end

	def index
		@events = Event.all 
	end


end

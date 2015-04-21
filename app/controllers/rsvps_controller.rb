class RsvpsController < ApplicationController

  def new
  	@rsvp = Rsvp.new
  end

  def create
  	@rsvp = Rsvp.new
  	if @rsvp.save
      
    else
      redirect_to @event
    end
  end

  def show
  	
  end
end

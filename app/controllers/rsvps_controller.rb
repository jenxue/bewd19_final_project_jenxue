class RsvpsController < ApplicationController

  def new
  	@rsvp = Rsvp.new
  end

  def create
  	@rsvp = Rsvp.new user_id: current_user.id, event_id: params[:id], rsvp_code: rand(10000..50000)
  	if @rsvp.save
      redirect_to @rsvp
    else
      redirect_to @event
    end
  end

  def show
  	@rsvp = Rsvp.find(params[:id])
  end
end

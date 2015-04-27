class RsvpsController < ApplicationController

  def create
  	@rsvp = Rsvp.new user_id: current_user.id, event_id: params[:selected_event], rsvp_code: rand(10000..50000)
  	if @rsvp.save
      redirect_to @rsvp
    end

    @event = Event.find params[:selected_event]
    @event.registrants += 1
    @event.save
  end

  def show
  	@rsvp = Rsvp.find(params[:id])
  end
end

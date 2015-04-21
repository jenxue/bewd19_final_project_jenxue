class EventsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @events = Event.all
  # end

  def show
    @event = Event.find(params[:id])
  end

  def new
  	@event = Event.new
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def create
    # title = params[:event][:title]
    # description = params[:event][:description]
    # start_time = params[:event][:start_time]
    # end_time = params[:event][:end_time]
    # location = params[:event][:location]

    # @event = Event.new (title: title,
    #   description: description,
    #   start_time: start_time,
    #   end_time: end_time,
    #   location: location)
    Rails.logger.info("LOG I AM HERE")
    safe_event_params = params.require(:event).permit(:title, :description, :start_time, :end_time, :location)
    @event = Event.new safe_event_params
    if @event.save
      Rails.logger.info("SAVE WAS SUCCESSFUL")
      redirect_to @event
    else
      Rails.logger.info("SAVE FAILED")
      render "new"
    end
  end

  def registrants
    @event = Event.users.count
  end
  

  def destroy
     
  end

end

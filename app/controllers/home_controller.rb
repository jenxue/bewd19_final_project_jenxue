class HomeController < ApplicationController
  def index
  	# @events = Event.all
  	@events = Event.where(
      'title LIKE :query OR description LIKE :query OR location LIKE :query',
      query: "%#{params[:q]}%")
  end
end

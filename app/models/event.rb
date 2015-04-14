class Event < ActiveRecord::Base

	validates :title, :description, :start_time, :end_time, :location, :upvotes, presence: true
  	scope :popular, -> { where('upvotes >= ?', 4)}
  	scope :recent, -> { where('created_at >= ?', Date.today)}

  	def self.search_for(query)
    	where('title LIKE :query OR description LIKE :query OR location LIKE :query', query: "%#{query}%")
  	end
end

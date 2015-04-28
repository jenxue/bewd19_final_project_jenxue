class Event < ActiveRecord::Base

	validates :title, :description, :start_time, :end_time, :location, presence: true
  	scope :popular, -> { where('registrants >= ?', 10)}
  	scope :recent, -> { where('created_at >= ?', Date.today)}

  # 	def search(search)
		# where('title LIKE :query OR description LIKE :query OR location LIKE :query', "%#{search}%")
  # 	end

	belongs_to :creator
	
	has_many :users, through: :rsvps
	has_many :comments
	has_many :rsvps

end

class DeleteRsvpsColumn < ActiveRecord::Migration
  def change
  	remove_column :events, :rsvps
  end
end

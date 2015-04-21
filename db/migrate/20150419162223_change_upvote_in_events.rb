class ChangeUpvoteInEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :upvote, :rsvps
  end
end

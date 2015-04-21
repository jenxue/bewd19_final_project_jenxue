class AddRegistrantsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :registrants, :integer
  end
end

class ChangeEventRegistrants < ActiveRecord::Migration
  def change
  	change_column(:events, :registrants, :integer, default: 0)
  end
end

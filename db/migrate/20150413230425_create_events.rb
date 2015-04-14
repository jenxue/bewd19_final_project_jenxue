class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :start_time
      t.string :end_time
      t.string :location
      t.integer :upvote
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

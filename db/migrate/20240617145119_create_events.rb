class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_day
      t.date :end_day
      t.time :hour
      t.string :address
      t.string :city
      t.float :cost
      t.string :link_event
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

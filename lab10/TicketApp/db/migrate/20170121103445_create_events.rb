class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :artist
      t.text :description
      t.float :price_low
      t.float :price_high
      t.date :event_date

      t.timestamps null: false
    end
  end
end

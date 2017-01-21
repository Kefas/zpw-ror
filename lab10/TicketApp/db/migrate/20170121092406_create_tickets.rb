class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :seat_id_seq
      t.string :address
      t.float :price
      t.string :email_address

      t.timestamps null: false
    end
  end
end

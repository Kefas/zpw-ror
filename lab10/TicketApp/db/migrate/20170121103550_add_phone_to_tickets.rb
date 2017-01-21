class AddPhoneToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :phone, :string
    add_column :tickets, :event_id, :integer
  end
end

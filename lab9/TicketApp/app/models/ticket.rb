class Ticket < ActiveRecord::Base
  validates :name, presence: true, :length => { :minimum => 6 }
  validates :email_address, presence: true
  validates :price, presence: true
end

class Event < ActiveRecord::Base
  validates :artist, presence: true
  validates :event_date, presence: true
  validates :price_low, presence: true

  has_many :tickets
end

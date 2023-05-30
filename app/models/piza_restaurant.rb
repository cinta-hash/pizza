class PizaRestaurant < ApplicationRecord
  belongs_to :piza
  belongs_to :restaurant
  validates :price {:greater_than => 1, :less_than => 30 }
end

class Booking < ApplicationRecord
  attr_accessor :price
  
  belongs_to :user
  belongs_to :property
end

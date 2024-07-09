class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :address, :description, :price, presence:true
end

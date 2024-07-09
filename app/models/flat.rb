class Flat < ApplicationRecord
  belongs_to :user

  validates :name, :address, :description, :price, presence:true
end

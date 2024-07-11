class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :description, :price, presence: true

end

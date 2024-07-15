class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address ],
    using: {
    tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :reviews, dependent: :destroy

  validates :name, :address, :description, :price, presence: true

  def unavailable_start_dates
    booked_days = []
    unavailable_date_ranges = bookings.map { |b| (b.start_date...b.end_date) }
    unavailable_date_ranges.each do |range|
      range.each { |day| booked_days << day }
    end
    return booked_days.uniq
  end

  def unavailable_end_dates
    booked_days = []
    unavailable_date_ranges = bookings.map { |b| b.start_date.next_day(1)..b.end_date }
    unavailable_date_ranges.each do |range|
      range.each { |day| booked_days << day }
    end
    return booked_days.uniq
  end
end

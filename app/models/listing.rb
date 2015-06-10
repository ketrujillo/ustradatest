class Listing < ActiveRecord::Base

has_many :applications
belongs_to :landlord


  validates :title, presence: true, length: { minimum: 4, maximum: 25, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :description, presence: true, length: { minimum: 4, maximum: 500, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :bedrooms, presence: true, numericality: { only_integer: true }

  validates :bathrooms, presence: true, numericality: true

  validates :price, presence: true, numericality: { only_integer: true }

  validates :date_available, presence: true

  validate :date_available_cannot_be_in_the_past


  def date_available_cannot_be_in_the_past
    if date_available.present? && date_available < Date.today
      errors.add(:date_available, "can't be in the past")
    end
  end

  validates :term, presence: true, numericality: { only_integer: true }

  validates :address, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :unit, presence: true, length: { minimum: 1, maximum: 10, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :city, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :state, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :zip, presence: true, length: { minimum: 5, maximum: 5, too_long: "5 characters required for zip code."}, numericality: { only_integer: true }

  validates :contact_email, presence: true, length: { minimum: 5, maximum: 70,too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}


  validates :landlord_id, presence: true

  validates :status, presence: true, numericality: { only_integer: true }






end

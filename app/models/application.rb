class Application < ActiveRecord::Base


belongs_to :renter
belongs_to :listing


  validates :first_name, presence: true, length: { minimum: 1, maximum: 50, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :middle_name, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed"}
  validates :last_name, presence: true, length: { minimum: 1, maximum: 50, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :dob, presence: true
  validate :dob_cannot_be_in_the_future
      def dob_cannot_be_in_the_future
        if dob.present? && dob > Date.today
          errors.add(:dob, "can't be in the future")
        end
      end
  validates :email, presence: true, length: { minimum: 5, maximum: 70,too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :address_0, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :city_0, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :state_0, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :zip_0, presence: true, length: { minimum: 5, maximum: 5, too_long: "5 characters required for zip code."}, numericality: { only_integer: true }
  validates :address_date_from_0, presence: true
  validate :address_date_from_0_cannot_be_in_the_future
      def address_date_from_0_cannot_be_in_the_future
        if address_date_from_0.present? && address_date_from_0 > Date.today
          errors.add(:address_date_from_0, "can't be in the future")
        end
      end
  validates :address_date_to_0, presence: true
  validate :address_date_to_0_cannot_be_in_the_future
      def address_date_to_0_cannot_be_in_the_future
        if address_date_to_0.present? && address_date_to_0 > Date.today && address_date_to_0 < address_date_from_0
          errors.add(:address_date_to_0, "can't be in the future or before address from date")
        end
      end
  validates :rent_0, presence: true, numericality: { only_integer: true }
  validates :landlord_name_0, presence: true, length: { minimum: 1, maximum: 50, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :employer_name_0, presence: true, length: { minimum: 1, maximum: 50, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :employer_role_0, presence: true, length: { minimum: 1, maximum: 50, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :employer_salary_0, presence: true, numericality: { only_integer: true }

  validates :employer_address_0, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :employer_city_0, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :employer_state_0, presence: true, length: { minimum: 2, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :employer_zip_0, presence: true, length: { minimum: 5, maximum: 5, too_long: "5 characters required for zip code."}, numericality: { only_integer: true }
  validates :employer_date_from_0, presence: true
  validate :employer_date_from_0_cannot_be_in_the_future
      def employer_date_from_0_cannot_be_in_the_future
        if employer_date_from_0.present? && employer_date_from_0 > Date.today
          errors.add(:employer_date_from_0, "can't be in the future")
        end
      end
  validates :employer_date_to_0, presence: true
  validate :employer_date_to_0_cannot_be_in_the_future
      def employer_date_to_0_cannot_be_in_the_future
        if employer_date_to_0.present? && employer_date_to_0 > Date.today && employer_date_to_0 < employer_date_from_0
          errors.add(:employer_date_to_0, "can't be in the future or before start date")
        end
      end
  validates :employer_name_0, presence: true, length: { minimum: 1, maximum: 50, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}
  validates :pets_dogs, numericality: { only_integer: true }
  validates :pets_cats, numericality: { only_integer: true }
  validates :pets_other, numericality: { only_integer: true }

  validates :credit_check_approval, presence: true
  validates :credit_check_approval, exclusion: { in: [nil] }

  validates :bg_check_approval, presence: true
  validates :bg_check_approval, exclusion: { in: [nil] }

  validates :signature, presence: true, length: { minimum: 1, maximum: 150, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed"}

  validates :renter_id, presence: true



protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :first_name
  devise_parameter_sanitizer.for(:sign_up) << :last_name

  devise_parameter_sanitizer.for(:account_update) << :first_name
  devise_parameter_sanitizer.for(:account_update) << :middle_name
  devise_parameter_sanitizer.for(:account_update) << :last_name
  devise_parameter_sanitizer.for(:account_update) << :dob
  devise_parameter_sanitizer.for(:account_update) << :email
  devise_parameter_sanitizer.for(:account_update) << :mobile
  devise_parameter_sanitizer.for(:account_update) << :profile_file1
  devise_parameter_sanitizer.for(:account_update) << :address_0
  devise_parameter_sanitizer.for(:account_update) << :city_0
  devise_parameter_sanitizer.for(:account_update) << :state_0
  devise_parameter_sanitizer.for(:account_update) << :zip_0
  devise_parameter_sanitizer.for(:account_update) << :address_date_from_0
  devise_parameter_sanitizer.for(:account_update) << :address_date_to_0
  devise_parameter_sanitizer.for(:account_update) << :rent_0
  devise_parameter_sanitizer.for(:account_update) << :landlord_name_0
  devise_parameter_sanitizer.for(:account_update) << :landlord_phone_0

end




end


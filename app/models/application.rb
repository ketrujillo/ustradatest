class Application < ActiveRecord::Base


belongs_to :renter
belongs_to :listing

before_action :configure_permitted_parameters, if: :devise_controller?

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


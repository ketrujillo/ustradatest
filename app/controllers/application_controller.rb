class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

layout :layout_by_resource

protected

def layout_by_resource
  if devise_controller? && resource_name == :renter
    "application_renter"
  elsif devise_controller? && resource_name == :landlord
    "application_landlord"
  else
    "application"
  end
end

def resource_name

  @resource = resource_name

end




end

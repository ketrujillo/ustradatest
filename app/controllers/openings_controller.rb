class OpeningsController < ApplicationController
  def index


  if current_landlord.present?
    redirect_to "/listings"
  elsif current_renter.present?
    redirect_to "/listings"
  end
  end

end

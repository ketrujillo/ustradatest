class ApplicationsController < ApplicationController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new
    @application.first_name = params[:first_name]
    @application.middle_name = params[:middle_name]
    @application.last_name = params[:last_name]
    @application.dob = params[:dob]
    @application.email = params[:email]
    @application.mobile = params[:mobile]
    @application.address_0 = params[:address_0]
    @application.city_0 = params[:city_0]
    @application.state_0 = params[:state_0]
    @application.zip_0 = params[:zip_0]
    @application.address_date_from_0 = params[:address_date_from_0]
    @application.address_date_to_0 = params[:address_date_to_0]
    @application.rent_0 = params[:rent_0]
    @application.landlord_name_0 = params[:landlord_name_0]
    @application.landlord_phone_0 = params[:landlord_phone_0]
    @application.employer_name_0 = params[:employer_name_0]
    @application.employer_role_0 = params[:employer_role_0]
    @application.employer_salary_0 = params[:employer_salary_0]
    @application.employer_address_0 = params[:employer_address_0]
    @application.employer_city_0 = params[:employer_city_0]
    @application.employer_state_0 = params[:employer_state_0]
    @application.employer_zip_0 = params[:employer_zip_0]
    @application.employer_date_from_0 = params[:employer_date_from_0]
    @application.employer_date_to_0 = params[:employer_date_to_0]
    @application.employer_manager_0 = params[:employer_manager_0]
    @application.employer_phone_0 = params[:employer_phone_0]
    @application.pets_dogs = params[:pets_dogs]
    @application.pets_cats = params[:pets_cats]
    @application.pets_other = params[:pets_other]
    @application.pets_explanation = params[:pets_explanation]
    @application.eviction = params[:eviction]
    @application.bankruptcy = params[:bankruptcy]
    @application.crime = params[:crime]
    @application.explanation = params[:explanation]
    @application.explanation_more = params[:explanation_more]
    @application.credit_check_approval = params[:credit_check_approval]
    @application.bg_check_approval = params[:bg_check_approval]
    @application.signature = params[:signature]
    @application.signature_date = params[:signature_date]
    @application.status = params[:status]
    @application.listing_id = params[:listing_id]
    @application.renter_id = params[:renter_id]

    if @application.save
      redirect_to "/applications", :notice => "Application created successfully."
    else
      render 'new'
    end
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])

    @application.first_name = params[:first_name]
    @application.middle_name = params[:middle_name]
    @application.last_name = params[:last_name]
    @application.dob = params[:dob]
    @application.email = params[:email]
    @application.mobile = params[:mobile]
    @application.address_0 = params[:address_0]
    @application.city_0 = params[:city_0]
    @application.state_0 = params[:state_0]
    @application.zip_0 = params[:zip_0]
    @application.address_date_from_0 = params[:address_date_from_0]
    @application.address_date_to_0 = params[:address_date_to_0]
    @application.rent_0 = params[:rent_0]
    @application.landlord_name_0 = params[:landlord_name_0]
    @application.landlord_phone_0 = params[:landlord_phone_0]
    @application.employer_name_0 = params[:employer_name_0]
    @application.employer_role_0 = params[:employer_role_0]
    @application.employer_salary_0 = params[:employer_salary_0]
    @application.employer_address_0 = params[:employer_address_0]
    @application.employer_city_0 = params[:employer_city_0]
    @application.employer_state_0 = params[:employer_state_0]
    @application.employer_zip_0 = params[:employer_zip_0]
    @application.employer_date_from_0 = params[:employer_date_from_0]
    @application.employer_date_to_0 = params[:employer_date_to_0]
    @application.employer_manager_0 = params[:employer_manager_0]
    @application.employer_phone_0 = params[:employer_phone_0]
    @application.pets_dogs = params[:pets_dogs]
    @application.pets_cats = params[:pets_cats]
    @application.pets_other = params[:pets_other]
    @application.pets_explanation = params[:pets_explanation]
    @application.eviction = params[:eviction]
    @application.bankruptcy = params[:bankruptcy]
    @application.crime = params[:crime]
    @application.explanation = params[:explanation]
    @application.explanation_more = params[:explanation_more]
    @application.credit_check_approval = params[:credit_check_approval]
    @application.bg_check_approval = params[:bg_check_approval]
    @application.signature = params[:signature]
    @application.signature_date = params[:signature_date]
    @application.status = params[:status]
    @application.listing_id = params[:listing_id]
    @application.renter_id = params[:renter_id]

    if @application.save
      redirect_to "/applications", :notice => "Application updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @application = Application.find(params[:id])

    @application.destroy

    redirect_to "/applications", :notice => "Application deleted."
  end
end

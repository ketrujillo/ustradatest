class ListingsController < ApplicationController

before_filter :authenticate_landlord!, except: [ :index, :show ]


  def index

    # if current_landlord.present?
    #   @listings = Listing.current_landlord.all
    # elsif current_renter.present?
      @listings = Listing.all
    # end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new
    @listing.title = params[:title]
    @listing.description = params[:description]
    @listing.bedrooms = params[:bedrooms]
    @listing.bathrooms = params[:bathrooms]
    @listing.price = params[:price]
    @listing.date_available = params[:date_available]
    @listing.term = params[:term]
    @listing.address = params[:address]
    @listing.unit = params[:unit]
    @listing.city = params[:city]
    @listing.state = params[:state]
    @listing.zip = params[:zip]
    @listing.image_file1 = params[:image_file1]
    @listing.image_file2 = params[:image_file2]
    @listing.image_file3 = params[:image_file3]
    @listing.image_file4 = params[:image_file4]
    @listing.image_file5 = params[:image_file5]
    @listing.landlord_id = current_landlord.id
    @listing.contact_email = params[:contact_email]
    @listing.status = 0

    if @listing.save
      redirect_to "/listings", :notice => "Listing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    @listing.title = params[:title]
    @listing.description = params[:description]
    @listing.bedrooms = params[:bedrooms]
    @listing.bathrooms = params[:bathrooms]
    @listing.price = params[:price]
    @listing.date_available = params[:date_available]
    @listing.term = params[:term]
    @listing.address = params[:address]
    @listing.unit = params[:unit]
    @listing.city = params[:city]
    @listing.state = params[:state]
    @listing.zip = params[:zip]
    @listing.image_file1 = params[:image_file1]
    @listing.image_file2 = params[:image_file2]
    @listing.image_file3 = params[:image_file3]
    @listing.image_file4 = params[:image_file4]
    @listing.image_file5 = params[:image_file5]
    @listing.landlord_id = current_landlord.id
    @listing.contact_email = params[:contact_email]
    @listing.status = params[:status]

    if @listing.save
      redirect_to "/listings", :notice => "Listing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @listing = Listing.find(params[:id])

    @listing.destroy

    redirect_to "/listings", :notice => "Listing deleted."
  end
end

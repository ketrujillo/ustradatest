class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.string :email
      t.integer :mobile
      t.string :address_0
      t.string :city_0
      t.string :state_0
      t.string :zip_0
      t.date :address_date_from_0
      t.date :address_date_to_0
      t.integer :rent_0
      t.string :landlord_name_0
      t.integer :landlord_phone_0
      t.string :employer_name_0
      t.string :employer_role_0
      t.integer :employer_salary_0
      t.string :employer_address_0
      t.string :employer_city_0
      t.string :employer_state_0
      t.string :employer_zip_0
      t.date :employer_date_from_0
      t.date :employer_date_to_0
      t.string :employer_manager_0
      t.integer :employer_phone_0
      t.integer :pets_dogs
      t.integer :pets_cats
      t.integer :pets_other
      t.text :pets_explanation
      t.boolean :eviction
      t.boolean :bankruptcy
      t.boolean :crime
      t.text :explanation
      t.text :explanation_more
      t.boolean :credit_check_approval
      t.boolean :bg_check_approval
      t.string :signature
      t.date :signature_date
      t.integer :status
      t.integer :listing_id
      t.integer :renter_id

      t.timestamps

    end
  end
end

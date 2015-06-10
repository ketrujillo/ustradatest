class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.integer :bedrooms
      t.float :bathrooms
      t.integer :price
      t.date :date_available
      t.integer :term
      t.string :address
      t.string :unit
      t.string :city
      t.string :state
      t.string :zip
      t.string :image_file1
      t.string :image_file2
      t.string :image_file3
      t.string :image_file4
      t.string :image_file5
      t.string :landlord_id
      t.string :contact_email
      t.integer :status

      t.timestamps

    end
  end
end

class DeviseCreateRenters < ActiveRecord::Migration
  def change
    create_table(:renters) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.integer :mobile
      t.string :profile_file1
      t.string :address_0
      t.string :city_0
      t.string :state_0
      t.string :zip_0
      t.date :address_date_from_0
      t.date :address_date_to_0
      t.integer :rent_0
      t.string :landlord_name_0
      t.integer :landlord_phone_0

      t.timestamps null: false
    end

    add_index :renters, :email,                unique: true
    add_index :renters, :reset_password_token, unique: true
    # add_index :renters, :confirmation_token,   unique: true
    # add_index :renters, :unlock_token,         unique: true
  end
end

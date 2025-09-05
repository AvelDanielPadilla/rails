class CreateUserProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :user_profiles do |t|
      t.string :fullname
      t.string :username
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end

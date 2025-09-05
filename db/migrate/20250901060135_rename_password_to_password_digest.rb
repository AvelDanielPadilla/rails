class RenamePasswordToPasswordDigest < ActiveRecord::Migration[8.0]
  def change
    rename_column :user_profiles, :password, :password_digest
  end
end

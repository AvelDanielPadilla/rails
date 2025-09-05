class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :comments
      
      t.timestamps
    end
  end
end

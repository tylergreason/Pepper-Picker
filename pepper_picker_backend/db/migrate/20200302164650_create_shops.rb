class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :username 
      t.string :password 
      t.integer :money 
      t.string :date_created
      t.timestamps
    end
  end
end

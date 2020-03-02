class CreatePlantShops < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_shops do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

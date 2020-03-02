class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :time_to_maturity
      t.integer :cost
      t.integer :sale_price
      t.string :date_created
      t.boolean :for_sale
      t.timestamps
    end
  end
end

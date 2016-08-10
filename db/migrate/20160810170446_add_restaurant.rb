class AddRestaurant < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.string :address
      t.string :price_range
      t.timestamps
    end
  end
end

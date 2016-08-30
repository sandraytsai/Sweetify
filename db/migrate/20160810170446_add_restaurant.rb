class AddRestaurant < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.string :address
      t.string :price_range
      t.string :img_1
      t.string :img_2
      t.string :img_3
      t.timestamps
    end
  end
end

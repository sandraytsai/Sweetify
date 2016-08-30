class RestaurantsTags < ActiveRecord::Migration
  def change
    create_table :restaurants_tags do |t|
      t.references :restaurant 
      t.references :tag
    end
  end
end

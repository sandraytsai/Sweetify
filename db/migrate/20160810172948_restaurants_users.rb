class RestaurantsUsers < ActiveRecord::Migration
  def change
    create_table :restaurants_users do |t|
      t.references :restaurant 
      t.references :user
    end
  end
end

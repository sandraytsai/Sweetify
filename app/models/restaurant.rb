class Restaurant < ActiveRecord::Base 
  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags

  validates :name, presence: true 
  validates :address, presence: true 
  validates :price_range, presence: true 

end 
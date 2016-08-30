class User < ActiveRecord::Base 
  has_secure_password
  has_and_belongs_to_many :restaurants

  validates :username, presence:true, uniqueness: true, length: { in: 4..15 }
  validates :email, presence: true, uniqueness: true, format: { with: /.+@.+\..{3}/}
  validates :password, presence: true, length: { minimum: 6 }

  end 


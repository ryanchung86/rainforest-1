class User < ApplicationRecord
  validates :email, presence: true
  has_secure_password

  has_many :reviews
  has_many :products, through: :reviews
end

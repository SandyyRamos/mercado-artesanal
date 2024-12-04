class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :orders

  validates :name, :description, :price, :stock, presence: true
end

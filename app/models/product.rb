class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :orders
  has_one_attached :image

  validates :name, :description, :price, :stock, presence: true
end

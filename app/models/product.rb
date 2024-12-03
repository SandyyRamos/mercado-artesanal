class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :sales

  validates :name, :description, :price, :stock, presence: true
end

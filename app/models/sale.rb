class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :quantity, :price, :total, :sale_date, presence: true
end

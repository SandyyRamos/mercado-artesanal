class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :total, :sale_date, :quantity, presence: true
  validates :quantity, numericality: {only_integer: true, less_than_or_equal_to: 5}
end

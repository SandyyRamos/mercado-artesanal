class User < ApplicationRecord
  has_many :products
  has_many :my_sales, through: :products, source: :sales
  has_many :my_buys, class_name: 'Sale', foreign_key: :user_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end


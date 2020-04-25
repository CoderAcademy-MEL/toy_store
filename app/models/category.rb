class Category < ApplicationRecord
  has_many :category_toys
  has_many :toys, through: :category_toys 
end

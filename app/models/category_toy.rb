class CategoryToy < ApplicationRecord
  belongs_to :category
  belongs_to :toy
end

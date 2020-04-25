class Toy < ApplicationRecord
  validates :name, presence: true
  has_many :category_toys
  has_many :categories, through: :category_toys
  belongs_to :user
  belongs_to :manufacturer
end

class Ingredient < ApplicationRecord
  # INGREDIENTS = Ingredient.all
  validates :name, uniqueness: true, presence: true
  has_many :doses

  # validates :ingredients, inclusion: { in: INGREDIENTS }
end

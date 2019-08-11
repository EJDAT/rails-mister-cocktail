class Dose < ApplicationRecord
  # DESCRIPTION = ["1 trait = 0.8 ml", "1 cuillère à café = 3.5 ml", "1 cuillère à soupe = 10 ml", "1 petit verre à digestif = 30 ml", "1 mesure à alcool = 40 ml"]

  validates :description, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  # validates :desciption, inclusion: { in: DESCRIPTION }
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end

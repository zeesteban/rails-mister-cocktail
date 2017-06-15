class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true

  validates_uniqueness_of :ingredient_id, scope: :cocktail_id







end

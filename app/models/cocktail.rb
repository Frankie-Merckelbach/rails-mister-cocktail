class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy

  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
end

    # Cannot have a has_many :through association 'Cocktail#ingredients' which goes through 'Cocktail#doses' before the through association is defined.

  # has a name
  # name cannot be blank
  # name is unique
  # has many doses
  # should destroy child doses when destroying self (FAILED - 6)
  # has many ingredients (FAILED - 7)

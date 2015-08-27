class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :item, presence: true
end

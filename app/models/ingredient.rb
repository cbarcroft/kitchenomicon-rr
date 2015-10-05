class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :item, presence: true
  validates :amount, :numericality => {:allow_blank => true}
end

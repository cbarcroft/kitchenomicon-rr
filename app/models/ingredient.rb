class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  validates :item, presence: true
  validate :amount_is_numeric_or_fraction
 
  def amount_is_numeric_or_fraction
    errors.add(:amount, "is not a number or fraction.") unless ((amount =~ /\d\/\d/) || (amount !~ /\D/) || amount.blank?)
  end
end

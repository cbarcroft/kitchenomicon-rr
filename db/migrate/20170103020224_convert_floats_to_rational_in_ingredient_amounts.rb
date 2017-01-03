class ConvertFloatsToRationalInIngredientAmounts < ActiveRecord::Migration
  def change
    Ingredient.all.each do |ingredient|
      ingredient.amount = ingredient.amount.to_r.rationalize(0.05) if ingredient.amount.include? "."
      ingredient.save!
    end
  end
end

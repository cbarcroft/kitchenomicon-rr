class AddFieldsToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :amount, :string
    add_column :ingredients, :unit, :string
    add_column :ingredients, :item, :string
  end
end

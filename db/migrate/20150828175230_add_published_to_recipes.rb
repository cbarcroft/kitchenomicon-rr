class AddPublishedToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :published, :boolean, default: true
  end
end

class AddDefaultToRecipesCount < ActiveRecord::Migration
  def change
    change_column :users, :recipes_count, :integer, :default => 0
  end
end

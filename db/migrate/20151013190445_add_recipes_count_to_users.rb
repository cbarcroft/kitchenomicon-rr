class AddRecipesCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recipes_count, :integer
  end
end

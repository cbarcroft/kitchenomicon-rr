class AddPhotoToRecipe < ActiveRecord::Migration
  def change
    add_attachment :recipes, :photo
  end
end

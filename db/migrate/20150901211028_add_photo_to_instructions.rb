class AddPhotoToInstructions < ActiveRecord::Migration
  def change
    add_attachment :instructions, :photo
  end
end

class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.references :recipe
      t.integer :order
      t.string :text
    end
  end
end

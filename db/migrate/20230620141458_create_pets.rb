class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.integer :weight
      t.integer :height
      t.integer :length
      t.integer :age
      t.string :location
      t.string :introduction
      t.string :housebroken
      t.string :crate_trained
      t.string :dog_social
      t.string :cat_social
      t.string :kid_compatibility
      t.text :full_description

      t.timestamps
    end
  end
end

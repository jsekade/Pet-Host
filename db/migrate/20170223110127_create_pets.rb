class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type_pet
      t.string :breed
      t.integer :age
      t.text :description_pet
      t.text :care
      t.references :user

      t.timestamps
    end
  end
end

class CreateValorations < ActiveRecord::Migration[5.0]
  def change
    create_table :valorations do |t|
      t.text :opinion
      t.integer :rating
      t.references :user

      t.timestamps
    end
  end
end

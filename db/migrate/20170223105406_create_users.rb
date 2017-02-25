class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :telephone
      #t.string :email
      t.string :street
      t.string :city
      t.integer :postal_code

      t.timestamps
    end
  end
end

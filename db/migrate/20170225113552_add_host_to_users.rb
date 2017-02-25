class AddHostToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :housing_type, :string
    add_column :users, :housing_description, :text
    add_column :users, :welcome_pets, :string
    add_column :users, :price, :integer
    add_column :users, :availability, :string
  end
end

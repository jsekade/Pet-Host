class Addhostreftovalorations < ActiveRecord::Migration[5.0]
  def change
  	add_reference :valorations, :host, references: :users
  end
end

class AddReferenceSenderandReceiverToMessage < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :sender, references: :users
    add_reference :messages, :receiver, references: :users
  end
end

class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :reciever
      t.string :msg

      t.timestamps
    end
  end
end
